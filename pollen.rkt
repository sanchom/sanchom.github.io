#lang racket

(require racket/path)
(require pollen/core)
(require pollen/decode txexpr)
(require pollen/setup)
(require (submod hyphenate safe))

(define template-message "This file was rendered by Pollen. Don't edit this file directly. It will be overwritten when Pollen re-renders.")
(define site-author "Sancho McCann")
(define site-title "Sancho McCann")
(define site-root "http://sanchom.github.io")

(define note-mode "sidenotes")
(define footnote-list empty)
(define margin-note-number 0)

(define (use-footnotes)
  (set! note-mode "footnotes"))
(define (use-sidenotes)
  (set! note-mode "sidenotes"))

(define (get-featured-image-url doc)
  (define (is-featured-img? tx)
    (and (txexpr? tx)
         (attrs-have-key? tx 'potential-feature)))
  (define featured-image (findf-txexpr doc is-featured-img?))
  (if featured-image
      (attr-ref featured-image 'src)
      #f))

; Simple replacements or re-tags.
(define elide "[…]")

(define (fig #:src src . caption)
  `(figure
    (img ([potential-feature "potential-feature"][src ,src]))
    (figcaption ,@caption)
   ))

(define (title . content)
  `(h1 ((hyphens "none")) ,@content))

(define (subtitle . content)
  `(p ((class "subtitle") (hyphens "none")) ,@content))

(define (heading . content)
  `(h2 ((hyphens "none")) ,@content))

(define (sub-heading . content)
  `(h3 ((hyphens "none")) ,@content))

; Quotation
(define (q . content)
  `(blockquote ,@content))

; Bold+emphasis
(define (bem . content)
  `(b (em ,@content)))

; A tiny social media logo.
(define (little-logo #:href href #:img img)
  `(a ((href ,href) (class "undecorated")) (img ((class "little-logo") (width "30px") (src ,img)))))

; A bracketed link.
(define (b-link #:word [word "pdf"] #:url url)
  `(span "[" (a ((href ,url)) ,word) "]"))

; A thumbnail.
(define (thumbnail #:big big-url #:small [small-url big-url])
  `(div [[class "thumbnail"]] (a ((href ,big-url) (class "undecorated")) (img ((class "thumbnail") (src ,small-url)))) (div [[class "clear"]])))

(define (code . content)
  `(blockquote [[class "code"]] (pre [[class "code"]] ,@content)))

(define (tt . content)
  `(span [[class "code"]] ,@content))

; Ignores single line breaks in paragraph interpretation. They are
; converted to spaces. But, double-breaks demarcate paragraphs.
(define (decode-double-breaks-into-paras elements)
  (decode-paragraphs elements
                     #:linebreak-proc (λ (x) (decode-linebreaks x '" "))))

; Explicit list annotation. First, detects double-line-breaks to
; create top-level block elements, then turns top-level elements
; within the itemize tag into list items. Excludes block-tags to avoid
; decending recursively into these and adding spurious list tags.
(define (itemize . elements)
  ; Surrounds every top-level element in this list with a list tag, but
  ; replaces naked p tags with li directly to avoid (li (p "text")).
  (define (turn-elements-into-list-items elements)
    (map (λ (x) (if (equal? (get-tag x) 'p) `(li ,@(get-elements x)) `(li ,x)))
         elements))
  `(ul ,@(decode-elements (decode-elements
                           elements
                           #:txexpr-elements-proc decode-double-breaks-into-paras)
                          #:txexpr-elements-proc turn-elements-into-list-items
                          #:exclude-tags (setup:block-tags))))


; Defines the formatting for a "work" that has an author and year.
(define (work #:author a #:year y #:url [url #f] . title-or-description)
  (if (not url)
      (txexpr 'span empty (list (txexpr 'em empty title-or-description) (format ", ~a (~a)" a y)))
      (txexpr 'span empty (list (txexpr 'em empty (list (txexpr 'a `((href ,url)) title-or-description))) (format ", ~a (~a)" a y)))))

; Defines a little sidebar box, not numbered, and by default
; not collapsed at all. This will stick close beside the anchor,
; on the web and in print.
(define (margin-note #:expanded [expanded #t] . content)
  (set! margin-note-number (+ 1 margin-note-number))
  (define refid (format "mn-~a" margin-note-number))
  (define subrefid (format "mn-~a-expand" margin-note-number))
  `(span (label [[for ,refid] [class "margin-toggle"]] "⊕")
         (input [[type "checkbox"] [id ,refid] [class "margin-toggle"]])
         (input [[type "checkbox"] [id ,subrefid] [class "margin-expand"]])
         (label [[for ,subrefid] [class ,(if expanded "margin-note expanded" "margin-note")] [hyphens "none"]] ,@content)))

; Defines a little sidenote or footnote (depending on the mode), numbered, and by default collapsed
; to a small height. In print, these are all footnotes.
(define (note #:expanded [expanded #f] . content)
  (define footnote-number (+ 1 (length footnote-list)))
  (set! footnote-list
        (append footnote-list (list `(p ([class "footnote"] [id ,(format "fn-~a" footnote-number)])
                                        ,(format "~a. " footnote-number) (a [[href ,(format "#fn-source-~a" footnote-number)] [class "backlink undecorated"]] " ⌃ ") ,@content))))
  (define refid (format "fn-~a" footnote-number))
  (define subrefid (format "fn-~a-expand" footnote-number))
  (if (equal? note-mode "sidenotes")
    `(span (label [[for ,refid] [class "margin-toggle sidenote-number"]])
           (input [[type "checkbox"] [id ,refid] [class "margin-toggle"]])
           (input [[type "checkbox"] [id ,subrefid] [class "margin-expand"]])
           (label [[for ,subrefid] [class ,(if expanded "sidenote expanded" "sidenote")] [hyphens "none"]] ,@content))
    `(a [[href ,(format "#fn-~a" footnote-number)] [class "undecorated"]] (span [[class "sidenote-number"] [id ,(format "fn-source-~a" footnote-number)]]))))

; Custom hyphenation that doesn't break URLs.
(define (custom-hyphenation x)
  (define allowed-capitalized-hyphenations
    (list "Atmos-View"))
  (define non-breakable-capitalized? (λ (word) (let ([letter (substring word 0 1)])
                                                 (and (equal? letter (string-upcase letter))
                                                      (not (ormap (λ (hy) (equal? (string-replace hy "-" "") word)) allowed-capitalized-hyphenations))))))
  (define (ligs? word)
    (ormap (λ (lig) (regexp-match lig word))
           '("ff" "fi" "fl" "ffi" "ffl")))
  (define (omission-test tx)
    (and (attrs-have-key? tx 'hyphens)
         (equal? (attr-ref tx 'hyphens) "none")))
  (define hyphenation-exceptions
    `("navcanada"
      "auto-nom-ous-ly"
      ,@allowed-capitalized-hyphenations))
  (hyphenate x
             #:exceptions hyphenation-exceptions
             #:omit-txexpr omission-test
             #:omit-word (λ (x) (or (non-breakable-capitalized? x) (ligs? x)))))

(define (add-footnotes tx)
  (define footnote-class
    (if (equal? note-mode "sidenotes") "endnotes print-only" "endnotes"))
  (txexpr (get-tag tx) (get-attrs tx) `(,@(get-elements tx) (div ((class ,footnote-class)) ,(when/splice (not (empty? footnote-list)) (heading "Notes")) ,@footnote-list))))

; Double line breaks create new paragraphs. Single line breaks are ignored.
(define (root . elements)
  (add-footnotes
   (decode (txexpr 'root empty elements)
           #:exclude-tags '(pre)
           #:txexpr-proc custom-hyphenation
           #:txexpr-elements-proc decode-double-breaks-into-paras
           #:string-proc (compose1 smart-quotes smart-dashes))))

(provide (all-defined-out))

(module setup racket/base
  (require racket/path)
  (require racket/string)
  (define (omitted-path? path)
    (or (path-has-extension? path ".yml")
        (equal? (path->string (file-name-from-path path)) "cars.xml")
        (string-suffix? (path->string (file-name-from-path path)) "template.html")
        (string-suffix? (path->string (file-name-from-path path)) "~")))
  (provide (all-defined-out)))
