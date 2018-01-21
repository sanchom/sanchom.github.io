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

(define (reg #:sec sec #:subsec [subsec #f])
  (define section-content
    (xexpr-path-first `(Section (Code ,(format "se=\"~a\"" sec))) cars-xml))
  (decode (parse-section-content section-content #:sec sec #:subsec subsec)
          #:txexpr-proc replace-definedtermen))

(define (parse-section-content content #:sec sec #:subsec [subsec #f])
  (define (parse-subsec-specialized content)
    (parse-subsec-content content sec))    
  (if subsec
      (txexpr 'div empty `(,(parse-subsec-specialized (xexpr-path-first `(Subsection (Code ,(format "se=\"~a\",ss=\"~a\"" sec subsec))) content))))
      (if (empty? (xexpr-path-list '(Subsection) content))
          (txexpr 'div empty `(,(txexpr 'p empty (list (txexpr 'b empty `(,(format "~a" sec))) " " (xexpr-path-first '(Text) content))) ,@(map parse-paragraph-content (xexpr-path-list '(Paragraph) content))))
          (txexpr 'div empty (map parse-subsec-specialized (xexpr-path-list '(Subsection) content))))))

(define (parse-subsec-content content parent-section-label)
  (define label
    (car (get-elements (xexpr-path-first '(Label) content))))
  (define text
    (xexpr-path-first '(Text) content))
  (define paras (xexpr-path-list '(Paragraph) content))
  (txexpr 'div '((class "subsec")) `(,(txexpr 'p empty (list (txexpr 'b empty `(,(format "~a ~a" parent-section-label label))) " " text)) ,@(map parse-paragraph-content paras))))

(define (parse-paragraph-content content)
  (define label
    (car (get-elements (xexpr-path-first '(Label) content))))
  (define text
    (xexpr-path-first '(Text) content))
  (define subparas (xexpr-path-list '(Subparagraph) content))
  (txexpr 'div '((class "para")) `(,(txexpr 'p empty (list (txexpr 'b empty `(,(format "~a" label))) " " text)) ,@(map parse-subparagraph-content subparas))))

(define (parse-subparagraph-content content)
  (define label
    (car (get-elements (xexpr-path-first '(Label) content))))
  (define text
    (xexpr-path-first '(Text) content))
  (define clauses (xexpr-path-list '(Clause) content))
  (txexpr 'div '((class "subpara")) `(,(txexpr 'p empty (list (txexpr 'b empty `(,(format "~a" label))) " " text)) ,@(map parse-clause-content clauses))))

(define (parse-clause-content content)
  (define label
    (car (get-elements (xexpr-path-first '(Label) content))))
  (define text
    (xexpr-path-first '(Text) content))
  (define subclauses (xexpr-path-list '(Subclause) content))
  (txexpr 'div '((class "clause")) `(,(txexpr 'p empty (list (txexpr 'b empty `(,(format "~a" label))) " " text)) ,@(map parse-subclause-content subclauses))))

(define (parse-subclause-content content)
  (define label
    (car (get-elements (xexpr-path-first '(Label) content))))
  (define text
    (xexpr-path-first '(Text) content))
  (txexpr 'div '((class "subclause")) `(,(txexpr 'p empty (list (txexpr 'b empty `(,(format "~a" label))) " " text)))))

(provide (all-from-out "../pollen.rkt"))
(provide (all-defined-out))
