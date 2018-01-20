#lang racket

(require "../pollen.rkt")
(require pollen/decode txexpr)
(require net/url)
(require xml)
(require xexpr-path)

(define site-title "Canadian Aviation Regulations")
(define elide "[…]")

(define cars-xml
  (xexpr-path-first '(Body) (xml->xexpr (document-element
                                         (read-xml (open-input-file "cars.xml"))))))

(define (replace-definedtermen input-txexpr)
  (define content (get-elements input-txexpr))
  (if (equal? (get-tag input-txexpr) 'DefinedTermEn)
      (txexpr 'b empty (list (txexpr 'em empty content)))
      input-txexpr))

; TODO(sanchom): Process each section recursively, processing the xexpressions using #:txexpr-proc.
(define (car #:sec sec #:subsec [subsec #f] #:para [para #f] #:subpara [subpara #f] #:clause [clause #f] #:subclause [subclause #f])
  (define tmp-content
    (xexpr-path-first `(Section (Code ,(format "se=\"~a\"" sec))) cars-xml))
  (define section-content
    (if subsec (xexpr-path-first `(Subsection (Code ,(format "se=\"~a\",ss=\"~a\"" sec subsec))) tmp-content)
        tmp-content))
  
  (define content
    (xexpr-path-first '(Text) section-content))
  (txexpr 'span empty (decode-elements
                       (list (txexpr 'b empty (list (if subsec (format "~a (~a) " sec subsec)
                                                        (format "~a " sec))))
                             (if content content "--- Failed to parse xml ---"))
                       #:txexpr-proc replace-definedtermen ; Replacing (DefinedTermEn content) with (b (em content))
                       )))

(provide (all-from-out "../pollen.rkt"))
(provide (all-defined-out))
