#lang racket

(require pollen/decode txexpr)
(require pollen/setup)
(require (submod hyphenate safe))

(define template-message "This file was rendered by Pollen. Don't edit this file directly. It will be overwritten when Pollen re-renders.")
(define site-author "Sancho McCann")
(define site-title "Sancho McCann")

(define elide "[…]")

; Ignores single line breaks in paragraph interpretation. They are
; converted to spaces.
(define (decode-double-breaks-into-paras elements)
  (decode-paragraphs elements
                     #:linebreak-proc (λ (x) (decode-linebreaks x '" "))))

(define capitalized? (λ (word) (let ([letter (substring word 0 1)])
  (equal? letter (string-upcase letter)))))

(define (ligs? word)
    (ormap (λ (lig) (regexp-match lig word))
           '("ff" "fi" "fl" "ffi" "ffl")))

(define hyphenation-exceptions
  '("navcanada"
    "auto-nom-ous-ly"))

(define (omission-test tx)
  (and (attrs-have-key? tx 'hyphens)
                       (equal? (attr-ref tx 'hyphens) "none")))
  
; Custom hyphenation that doesn't break URLs.
(define (custom-hyphenation x)
  (hyphenate x
             #:exceptions hyphenation-exceptions
             #:omit-txexpr omission-test
             #:omit-word (λ (x) (or (capitalized? x) (ligs? x)))))

; Double line breaks create new paragraphs. Single line breaks are ignored.
(define (root . elements)
  (decode (txexpr 'root empty elements)
          #:txexpr-proc custom-hyphenation
          #:txexpr-elements-proc decode-double-breaks-into-paras
          #:string-proc (compose1 smart-quotes smart-dashes)))

; Surrounds every top-level element in this list with a list tag, but
; replaces naked p tags with li directly to avoid (li (p "text")).
(define (turn-elements-into-list-items elements)
  (map (λ (x) (if (equal? (get-tag x) 'p) (txexpr 'li empty (get-elements x)) (list 'li x)))
       elements))

; Explicit list annotation. First, detects double-line-breaks to
; create top-level block elements, then turns top-level elements
; within the itemize tag into list items. Excludes block-tags to avoid
; decending recursively into these and adding spurious list tags.
(define (itemize . elements)
  (txexpr 'ul empty (decode-elements (decode-elements
                                      elements
                                      #:txexpr-elements-proc decode-double-breaks-into-paras)
                                     #:txexpr-elements-proc turn-elements-into-list-items
                                     #:exclude-tags (setup:block-tags))))


; Defines the formatting for a "work" that has an author and year.
(define (work #:author a #:year y #:url [url #f] . title-or-description)
  (if (not url)
      (txexpr 'span empty (list (txexpr 'em empty title-or-description) (format ", ~a (~a)" a y)))
      (txexpr 'span empty (list (txexpr 'em empty (list (txexpr 'a `((href ,url)) title-or-description))) (format ", ~a (~a)" a y)))))

; Defines a little sidebar box
(define (margin-note . content)
  (define refid (number->string (random 4294967087)))
  `(span (label [[for ,refid] [class "margin-toggle"]] "⊕")
         (input [[type "checkbox"] [id ,refid] [class "margin-toggle"]] )
         (span [(class "margin-note") (hyphens "none")] ,@content)))

(define (sidenote . content)
  (define refid (number->string (random 4294967087)))
  `(span (label [[for ,refid] [class "margin-toggle sidenote-number"]])
         (input [[type "checkbox"] [id ,refid] [class "margin-toggle"]] )
         (span [(class "sidenote") (hyphens "none")] ,@content)))

; Defines a little tiny social media logo
(define (little-logo #:href href . source)
  (txexpr 'a `((href ,href)) (list (txexpr 'img `((class "little-logo") (width "30px") (src ,@source)) empty))))

; Defines a little bracketed link
(define (b-link #:word [word "pdf"]. url)
  (txexpr 'span empty (list "[" (txexpr 'a `((href ,@url)) (list word)) "]")))

(define (thumbnail #:big big-url #:small [small-url big-url] #:width [width "150"])
  (txexpr 'a `((href ,big-url)) (list (txexpr 'img `((class "thumbnail") (src ,small-url) (width ,width)) empty))))

(define (q . content)
  (txexpr 'blockquote empty content))

(define (bem . content)
  (txexpr 'b empty (list (txexpr 'em empty content))))

(define (title . content)
  `(h1 ,@content))

(define (subtitle . content)
  `(p ((class "subtitle")) ,@content))

(define (heading . content)
  `(h2 ,@content))

(define (sub-heading . content)
  `(h3 ,@content))

(provide (all-defined-out))
