#lang racket

(require pollen/decode txexpr)

(define site-author "Sancho McCann")
(define site-title "2017")

; Ignores single line breaks in paragraph interpretation. They are
; converted to spaces.
(define (decode-paragraphs-double-break-only elements)
  (decode-paragraphs elements
                     #:linebreak-proc (λ (x) (decode-linebreaks x '" "))))

; Double line breaks create new paragraphs. Single line breaks are ignored.
(define (root . elements)
  (txexpr 'root empty (decode-elements
                       elements
                       #:txexpr-elements-proc decode-paragraphs-double-break-only
                       #:string-proc (compose1 smart-quotes smart-dashes))))

(define (turn-elements-into-list-items elements)
  (map (λ (x) (list 'li x)) (filter (λ (x) (not (and (string? x) (<= (string-length x) 1)))) elements)))

; Explicit list annotation, only turning the top level elements
; at into a list item: not decending into the divs to add li tags.
(define (itemize #:randomize [randomize #f]. elements)
  (txexpr 'ul empty (decode-elements
                     (if randomize (shuffle elements) elements)
                     #:txexpr-elements-proc turn-elements-into-list-items
                     #:exclude-tags '(div))))

; Defines the formatting for a "work" that has an author and year.
(define (work #:author a #:year y #:url [url #f] . title-or-description)
  (if (not url)
      (txexpr 'div empty (list (txexpr 'em empty title-or-description) (format ", ~a (~a)" a y)))
      (txexpr 'div empty (list (txexpr 'em empty (list (txexpr 'a `((href ,url)) title-or-description))) (format ", ~a (~a)" a y)))))

; Defines a little sidebar box
(define (aside . content)
  (txexpr 'div '((class "aside")) content))

(provide (all-defined-out))
