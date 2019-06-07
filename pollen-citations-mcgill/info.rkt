#lang info

(define collection "pollen")
(define test-omit-paths '("info.rkt" "scribblings/citations-mcgill.scrbl"))
(define scribblings '(("scribblings/citations-mcgill.scrbl")))
(define deps '("base"
               "pollen"
               "txexpr"))
(define build-deps '("racket-doc"
                     "rackunit-lib"
                     "scribble-lib"))
