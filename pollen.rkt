#lang racket

(require racket/path)
(require pollen/core)
(require pollen/tag)
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

(define (need-right-margin? doc)
  (define (is-margin-note? tx)
    (and (txexpr? tx)
         (attrs-have-key? tx 'class)
         (ormap (λ (a) (equal? "margin-note" a)) (string-split (attr-ref tx 'class)))))
  (findf-txexpr doc is-margin-note?))

; Simple replacements or re-tags.
(define elide "[…]")

(define (fig #:src src . caption)
  (case (current-poly-target)
    [(md) `(txt "![" ,@(if (not (empty? caption)) caption `("Missing image: `" ,src "`")) "](" ,src ")")]
    [else `(figure
            (img ([potential-feature "potential-feature"][src ,src]))
            (figcaption ,@caption)
            )]))

(define (title . content)
  (case (current-poly-target)
    [(md) `(txt "# " ,@content)]
    [else `(h1 ((hyphens "none")) ,@content)]))

(define (subtitle . content)
  (case (current-poly-target)
    [(md) `(txt "#### " ,@content)]
    [else `(p ((class "subtitle") (hyphens "none")) ,@content)]))

(define (heading . content)
  (case (current-poly-target)
    [(md) `(txt "## " ,@content)]
    [else `(h2 ((hyphens "none")) ,@content)]))

(define (sub-heading . content)
  (case (current-poly-target)
    [(md) `(txt "### " ,@content)]
    [else `(h3 ((hyphens "none")) ,@content)]))

(define (poly-string->symbol . string)
  (case (current-poly-target)
    [(md) `(txt "&" ,@string ";")]
    [else (string->symbol (car string))]))

; Quotation
(define (q . content)
  (case (current-poly-target)
    [(md) `(txt "> " ,@(map (λ (x) (if (equal? x "\n") "\n> " x)) content))]
    [else `(blockquote ,@content)]))

; Bold+emphasis
(define (bem . content)
  (b (em content)))

(define (em . content)
  (case (current-poly-target)
    [(md) `(txt "_" ,@content "_")]
    [else `(em ,@content)]))

(define (b . content)
  (case (current-poly-target)
    [(md) `(txt "**" ,@content "**")]
    [else `(b ,@content)]))

(define (a #:href href . content)
  (case (current-poly-target)
    [(md) `(txt "[" ,@content "](" ,href ")")]
    [else `(a [[href ,href]] ,@content)]))

(define-tag-function (div attrs elems)
  (case (current-poly-target)
    [(md) `(txt ,@elems)]
    [else `(div ,attrs ,@elems)]))

; A tiny social media logo.
(define (little-logo #:href href #:img img)
  (case (current-poly-target)
    [(md) `(txt "<a href=" "\"" ,href "\"" "><img width=32 src=" "\"" ,img "\"" " /></a>")]
    [else `(a ((href ,href) (class "undecorated")) (img ((class "little-logo") (width "30px") (src ,img))))]))

; A bracketed link.
(define (bracketed-link #:word [word "pdf"] #:url url)
  (case (current-poly-target)
    [(md) `(txt "[" ,(a #:href url word) "]")]
    [else `(span "[" (a ((href ,url)) ,word) "]")]))

; A thumbnail.
(define (thumbnail #:big big-url #:small [small-url big-url])
  (case (current-poly-target)
    [(md) `(txt "<img align=" "\"" "left" "\"" " width=150 src=" "\"" ,small-url "\"" " />")]
    [else `(div [[class "thumbnail"]] (a ((href ,big-url) (class "undecorated")) (img ((class "thumbnail") (src ,small-url)))) (div [[class "clear"]]))]))

(define (codeblock . content)
  (case (current-poly-target)
    [(md) `(txt "```\n" ,@content "\n```")]
    [else `(blockquote [[class "code"]] (pre [[class "code"]] ,@content))]))

(define (hr)
  (case (current-poly-target)
    [(md) `(txt "\n___________\n")]
    [else `(hr)]))

(define (tt . content)
  (case (current-poly-target)
    [(md) `(txt "`" ,@content "`")]
    [else `(span [[class "code"]] ,@content)])) ; TODO: Use <code> instead.

; Ignores single line breaks in paragraph interpretation. They are
; converted to spaces. But, double-breaks demarcate paragraphs.
(define (decode-double-breaks-into-paras elements)
  (decode-paragraphs elements
                     #:linebreak-proc (λ (x) (decode-linebreaks x '" "))))

; Insert commas between successive sidenotes.
(define (insert-sidenote-commas tx)
  (define (is-trigger-triple? x y z)
    (and (is-sidenote-wrapper? x)
         (string? y)
         (equal? (string-trim y) "")
         (is-sidenote-wrapper? z)))
  (define (is-trigger-double? x y)
    (and (is-sidenote-wrapper? x)
                        (is-sidenote-wrapper? y)))
  (define (is-sidenote-wrapper? tx)
    (and (txexpr? tx)
         (attrs-have-key? tx 'class)
         (equal? (attr-ref tx 'class) "sidenote-wrapper")))
  (define elements (get-elements tx))
  (txexpr (get-tag tx) (get-attrs tx)
          (let loop ([result empty]
                     [elements elements])
            (if (empty? elements) ; If only zero items.
                result
                (if (empty? (cdr elements)) ; If only one item in elements.
                    (append result elements)
                    (let ([x (car elements)]
                          [y (cadr elements)])
                      (if (empty? (cddr elements)) ; If only two items in elements.
                          ; If they're both span.sidenote-wrapper, put the first one plus a comma into
                          ; results, then recurse, otherwise, just put the first one into results and
                          ; recurse.
                          (if (is-trigger-double? x y)
                              (loop (append result (list x '(span [[class "sidenote-comma"]] ","))) (cdr elements))
                              (loop (append result (list x)) (cdr elements)))
                          ; Otherwise, there are at least three items in elements; check whether the first two
                          ; are successive sidenotes, or whether the three together are a sequence like:
                          ; (sidenote whitespace sidenote).
                          (let ([z (caddr elements)])
                            (if (is-trigger-double? x y)
                                (loop (append result (list x '(span [[class "sidenote-comma"]] ","))) (cdr elements))
                                (if (is-trigger-triple? x y z)
                                    (loop (append result (list x '(span [[class "sidenote-comma"]] ","))) (cddr elements))
                                    (loop (append result (list x)) (cdr elements))))))))))))

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
  (case (current-poly-target)
    [(md) (render-md-work a y url title-or-description)]
    [else (render-html-work a y url title-or-description)]))

(define (render-md-work a y url title-or-description)
  (if (not url)
      `(txt "_" ,@title-or-description "_, " ,a " (" ,y ")")
      `(txt "_[" ,@title-or-description "](" ,url ")_, " ,a " (" ,y ")")))

(define (render-html-work a y url title-or-description)
  (if (not url)
      (txexpr 'span empty (list (txexpr 'em empty title-or-description) (format ", ~a (~a)" a y)))
      (txexpr 'span empty (list (txexpr 'em empty (list (txexpr 'a `((href ,url)) title-or-description))) (format ", ~a (~a)" a y)))))

; Defines a little sidebar box, not numbered, and by default
; not collapsed at all. This will stick close beside the anchor,
; on the web and in print.
(define (margin-note #:expanded [expanded #t] . content)
  (case (current-poly-target)
    [(md) (note content)]
    [else (begin
            (set! margin-note-number (+ 1 margin-note-number))
            (define refid (format "mn-~a" margin-note-number))
            (define subrefid (format "mn-~a-expand" margin-note-number))
            `(span (label [[for ,refid] [class "margin-toggle"]] "⊕")
                   (input [[type "checkbox"] [id ,refid] [class "margin-toggle"]])
                   (input [[type "checkbox"] [id ,subrefid] [class "margin-expand"]])
                   (label [[for ,subrefid] [class ,(if expanded "margin-note expanded" "margin-note")] [hyphens "none"]] ,@content)))]))

; Defines a little sidenote or footnote (depending on the mode), numbered, and by default collapsed
; to a small height. In print, these are all footnotes.
(define (note #:expanded [expanded #f] . content)
  (case (current-poly-target)
    [(md) (make-md-note content)]
    [else (make-html-note expanded content)]))

(define (make-md-note content)
  (define footnote-number (+ 1 (length footnote-list)))
  (set! footnote-list
        (append footnote-list (list `(txt ,(format "[~a]" footnote-number) " " ,@content))))
  `(txt ,(format "[~a]" footnote-number)))

(define (make-html-note expanded content)
  (define footnote-number (+ 1 (length footnote-list)))
  (set! footnote-list
        (append footnote-list (list `(p ([class "footnote"] [id ,(format "fn-~a" footnote-number)])
                                        ,(format "~a. " footnote-number) (a [[href ,(format "#fn-source-~a" footnote-number)] [class "backlink undecorated"]] " ⌃ ") ,@content))))
  (define refid (format "fn-~a" footnote-number))
  (define subrefid (format "fn-~a-expand" footnote-number))
  (if (equal? note-mode "sidenotes")
      `(span [[class "sidenote-wrapper"]]
             (span (label [[for ,refid] [class "margin-toggle sidenote-number"]])
                   (input [[type "checkbox"] [id ,refid] [class "margin-toggle"]])
                   (input [[type "checkbox"] [id ,subrefid] [class "margin-expand"]])
                   (label [[for ,subrefid] [class ,(if expanded "sidenote expanded" "sidenote")] [hyphens "none"]] ,@content)))
      `(span [[class "sidenote-wrapper"]]
             (a [[href ,(format "#fn-~a" footnote-number)] [class "undecorated"]] (span [[class "sidenote-number"] [id ,(format "fn-source-~a" footnote-number)]])))))

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

(define (add-html-footnotes tx)
  (define footnote-class
    (if (equal? note-mode "sidenotes") "endnotes print-only" "endnotes"))
  (txexpr (get-tag tx) (get-attrs tx) `(,@(get-elements tx) (div ((class ,footnote-class)) ,(when/splice (not (empty? footnote-list)) (heading "Notes")) ,@footnote-list))))

(define (add-md-footnotes elements)
  `(,@elements ,(when/splice (not (empty? footnote-list)) '(txt "\n" "## Notes")) "\n" ,@(map (λ x `(txt ,x "\n\n")) footnote-list)))

(define (root . elements)
  (case (current-poly-target)
    [(md) (decode-md root elements)]
    [else (decode-html root elements)]))

; TODO: Replace non-breaking spaces with normal spaces in markdown. No string->symbol directly in authoring markup.
; TODO: Add footnote anchors and backlinks to markdown.
; TODO: No raw "img" tags in authoring markup; turn the new tag into images that break nicely in markdown.
; TODO: Check that all my articles render nicely in html-wide, html-narrow, html-print, and markdown.
(define (decode-md root elements)
  (add-md-footnotes (decode-elements elements
                                     #:string-proc (compose1 smart-quotes smart-dashes))))

(define (decode-html root elements)
  (add-html-footnotes
   ; TODO: Remove the need for this nested-decode. I need it now because the insert-sidenote-commas
   ; function works on txexprs, and searches for sequences of child elements that constitute
   ; successive side/footnotes. If these are at the main text level, they don't appear as children
   ; of anything until after paragraphs are formed. (Well, they're children of root, but then they're
   ; just elements. I think I could refactor this by making insert-sidenote-commas work on txexpr-elements
   ; instead of txexprs.
   (decode (txexpr 'root empty (get-elements
                                (decode (txexpr 'root empty elements)
                                        #:exclude-tags '(pre)
                                        #:txexpr-proc custom-hyphenation
                                        ; Double line breaks create new paragraphs. Single line breaks are ignored.
                                        #:txexpr-elements-proc decode-double-breaks-into-paras
                                        #:string-proc (compose1 smart-quotes smart-dashes))))
           #:exclude-tags '(pre)
           #:txexpr-proc insert-sidenote-commas)))

(provide (all-defined-out))

(module setup racket/base
  (require racket/path)
  (require racket/string)
  (define (omitted-path? path)
    (or (path-has-extension? path ".yml")
        (equal? (path->string (file-name-from-path path)) "cars.xml")
        (string-suffix? (path->string (file-name-from-path path)) "template.html")
        (string-suffix? (path->string (file-name-from-path path)) "~")))
  (define poly-targets '(html md))
  (provide (all-defined-out)))
