#lang racket

(require txexpr)
(require markdown/parse)
(require racket/contract)
(require racket/string)

(module+ test
  (require rackunit))

(define link-re #rx"\\[.+?\\]\\(.+?\\)")

(define/contract (contains-markdown-link? str)
  (string? . -> . boolean?)
  (regexp-match? link-re str))

(module+ test
  (check-false (contains-markdown-link? ""))
  (check-false (contains-markdown-link? "[](http://link.com)"))
  (check-false (contains-markdown-link? "[link]()"))
  (check-true (contains-markdown-link? "[link](http://link.com)")))

(define/contract (split-at-first-markdown-link str)
  (string? . -> . (values string? string? string?))
  (define positions (regexp-match-positions link-re str))
  (define a (car (first positions)))
  (define b (cdr (first positions)))
  (values (substring str 0 a) (substring str a b) (substring str b)))

(module+ test
  (define-values (a b c) (split-at-first-markdown-link "[link](http://link.com)"))
  (check-equal? a "")
  (check-equal? b "[link](http://link.com)")
  (check-equal? c "")
  (define-values (d e f) (split-at-first-markdown-link "sss [link](http://link.com)xyf"))
  (check-equal? d "sss ")
  (check-equal? e "[link](http://link.com)")
  (check-equal? f "xyf")
  (define-values (before link after) (split-at-first-markdown-link "before [link one](http://link1.com) mid [link two](http://link2.com)"))
  (check-equal? before "before ")
  (check-equal? link "[link one](http://link1.com)")
  (check-equal? after " mid [link two](http://link2.com)")
  )

(define/contract (parse-link str)
  (string? . -> . txexpr?)
  (define parsed (first (parse-markdown str)))
  (define url (string-replace (attr-ref (third parsed) 'href) "\u00AD" ""))
  (define content (get-elements (third parsed)))
  (txexpr 'a `[[href ,url]] content))

; Parses only the simplest markdown links in a string. No
; parentheses in the URL, etc. This returns a list of
; strings and txexprs, so the result needs to be unspliced
; or appeneded into the surrounding original context.
(define/contract (parse-markdown-links str)
  (string? . -> . (listof (or/c txexpr? string?)))
  (if (contains-markdown-link? str)
      (let-values ([(before link-text after) (split-at-first-markdown-link str)])
        `(,before ,(parse-link link-text) ,@(parse-markdown-links after)))
      `(,str)))

(module+ test
  (check-equal? (parse-markdown-links "") '(""))
  (check-equal? (parse-markdown-links "test string without links")
                '("test string without links"))
  (check-equal? (parse-markdown-links "before [link](http://link.com) after")
                `("before " ,(txexpr 'a '((href "http://link.com")) '("link")) " after"))
  (check-equal? (parse-markdown-links "before [link](http://li\u00ADnk-with-soft-hyphen.com) after")
                `("before " ,(txexpr 'a '((href "http://link-with-soft-hyphen.com")) '("link")) " after"))
  (check-equal? (parse-markdown-links "before [link\nwith\nmultiple\nlines](http://link.com) after")
                `("before " ,(txexpr 'a '((href "http://link.com")) '("link with multiple lines")) " after"))
  (check-equal? (parse-markdown-links " mid [link two](http://link2.com)")
                `(" mid " ,(txexpr 'a '((href "http://link2.com")) '("link two")) ""))
  (check-equal? (parse-markdown-links "before [link one](http://link1.com) mid [link two](http://link2.com)")
                `("before " ,(txexpr 'a '((href "http://link1.com")) '("link one")) " mid " ,(txexpr 'a '((href "http://link2.com")) '("link two")) ""))
  )

(provide parse-markdown-links)