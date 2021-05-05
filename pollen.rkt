#lang racket

(require racket/path)
(require racket/string)
(require pollen/core)
(require pollen/tag)
(require pollen/decode)
(require txexpr)
(require pollen/setup)
(require (for-syntax racket/syntax))
(require (submod hyphenate safe))
(require pollen/citations-mcgill)

(require "util.rkt")
(require "markdown.rkt")

(define template-message "This file was rendered by Pollen. Don't edit this file directly. It will be overwritten when Pollen re-renders.")
(define site-author "Sancho McCann")
(define site-title "Sancho McCann")
(define site-root "https://sanchom.github.io")

; Some globals for managing footnotes/sidenotes.
(define note-mode "sidenotes")
(define footnote-list empty)
(define margin-note-number 0)

(define (use-footnotes)
  (set! note-mode "footnotes"))
(define (use-sidenotes)
  (set! note-mode "sidenotes"))

; Some helper functions that can be called from templates.
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

; For use in the html <title> element. It doesn't recognize italics etc, so those are stripped out.
(define (simplified-title src)
  (define t (select-from-metas 'page-title src))
  (cond
    [(string? t) (smart-quotes (smart-dashes t))]
    [(txexpr-elements? t) (decode-elements t
                                           #:txexpr-proc (λ (tx) `(@ ,@(get-elements tx)))
                                           #:string-proc (compose1 smart-quotes smart-dashes))]
    [else (raise-user-error "Title is neither a string nor txexpr-elements.")]))

; For fetching the title or short title for use in the body. It does recognize italics.
(define (processed-title t)
  (cond
    [(string? t) (smart-quotes (smart-dashes t))]
    [(txexpr-elements? t) (decode t
                                  #:string-proc (compose1 smart-quotes smart-dashes))]
    [else (raise-user-error (format "Title is neither a string nor txexpr-elements: ~a" t))]))

; For use in next/prev links.
(define (grab-optionally-shortened-title src)
  (define title (processed-title (select-from-metas 'page-title src)))
  (define short-title (select-from-metas 'short-title src))
  (if (not short-title) title short-title))

; Simple replacements or tag aliases.
(define elide "[…]")

(define ellipsis "…")

(define (nbsp)
  (string->symbol "nbsp"))

(define (non-breaking-hyphen)
  (string->number "8209"))

(define (lozenge)
  (string->symbol "loz"))

; Basic semantic elements.
; ---------------------------------------------------
(define (fig #:src src #:width [width #f] . caption)
  `(figure
    (img (,(when/splice width `[class "specified-width"]) ,(when/splice width `[width ,width])[potential-feature "potential-feature"][src ,src]))
    (figcaption ,@caption)
    ))

(define (video-player #:src src #:width [width #f] . caption)
  `(figure
    (div [[class "vid-wrapper"] ,(when/splice width `[style ,(format "width: ~a;" width)])]
         (video [[id "player"][playsinline ""][controls ""][width "100%"]] (source [[src ,src][type "video/mp4"]])))
    (figcaption ,@caption)
    ))

(define (title . content)
  (raise-user-error (format "~a: title tag is deprecated; use (define-meta 'title ◊@{title goes ◊em{here}}) in source" (select-from-metas 'here-path (current-metas)))))

(define (subtitle . content)
  (raise-user-error (format "~a: subtitle tag is deprecated; suggest using author tag" (select-from-metas 'here-path (current-metas)))))

(define (heading . content)
  `(h2 ((hyphens "none")) ,@content))

(define (sub-heading . content)
  `(h3 ((hyphens "none")) ,@content))

; Quotation
(define (q . content)
  `(blockquote ,@content))

; A tiny social media logo.
(define (little-logo #:href href #:img img)
  `(a ((href ,href) (class "undecorated")) (img ((class "little-logo") (width "30px") (src ,img)))))

; An outline around some text to give a bit of visual emphasis.
(define (outline . content)
  `(span [[class "outline"]] ,@content))

(define (abstract . content)
  `(div [[class "abstract"]] ,@content))

; A little blood red
(define (red . content)
  `(span [[class "red"]] ,@content))

; Some code styling
(define (codeblock . content)
  `(blockquote [[class "code"]] (pre [[class "code"]] ,@content)))

(define (tt . content)
  `(span [[class "code"]] ,@content)) ; TODO: Use <code> instead.

(define (no-formatting . content)
  `(span ,@content))

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

; Defines a little sidebar box, not numbered, and by default
; not collapsed at all. This will stick close beside the anchor,
; on the web and in print.
(define (margin-note #:expanded [expanded #t] . content)
  (begin
    (set! margin-note-number (+ 1 margin-note-number))
    (define refid (format "mn-~a" margin-note-number))
    (define subrefid (format "mn-~a-expand" margin-note-number))
    `(span (label [[for ,refid] [class "margin-toggle"]] "⊕")
           (input [[type "checkbox"] [id ,refid] [class "margin-toggle"]])
           (input [[type "checkbox"] [id ,subrefid] [class "margin-expand"]])
           (label [[for ,subrefid] [class ,(if expanded "margin-note expanded" "margin-note")] [hyphens "none"]] ,@content))))

; Interaction with the citation system in citation-system.rkt
; ------------------------------------------------------------

; Aliases to simplify citations that use signals.
; The "cite" call is this system's interaction with the citation system.
; Don't mess around with what is returned by "cite". The citation system
; is expecting certain elements and attributes to linger, in order to
; optionally transform them later on.
(define-syntax (define-signal stx)
  (syntax-case stx ()
    [(_ SIGNAL TEXT)
     (with-syntax ([NOTE-SIGNAL (format-id #'SIGNAL "note-~a" #'SIGNAL)])
       #'(begin
           (define (SIGNAL id #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f] #:terminal [terminal "."])
             (cite id #:pinpoint pinpoint #:parenthetical parenthetical #:judge judge #:speaker speaker #:signal TEXT #:terminal terminal))
           (define (NOTE-SIGNAL id #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f])
             (note (SIGNAL id #:pinpoint pinpoint #:parenthetical parenthetical #:judge judge #:speaker speaker))))
       )]))

(define-signal see "See")
(define-signal see-also "See also")
(define-signal but-see "But see")
(define-signal see-eg "See e.g.")
(define-signal see-generally "See generally")

(define (note-cite id #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f] #:signal [signal #f])
  (note (cite id #:pinpoint pinpoint #:parenthetical parenthetical #:judge judge #:speaker speaker #:signal signal)))

; Defines a little sidenote or footnote (depending on the mode), numbered, and by default collapsed
; to a small height. In print, these are all footnotes.
(define (note #:expanded [expanded #f] . content)
  (define footnote-number (+ 1 (length footnote-list)))

  ; Letting the citation system do its thing.
  (define transformed-content
    (decode-elements content
                     #:txexpr-proc (λ (x) (transform-cite-in-a-note x footnote-number))))

  (set! footnote-list
        (append footnote-list (list `(p ([class "footnote"] [id ,(format "fn-~a" footnote-number)])
                                        ,(format "~a. " footnote-number) (a [[href ,(format "#fn-source-~a" footnote-number)] [class "backlink undecorated"]] " ↑ ") ,@transformed-content))))
  (define refid (format "fn-~a" footnote-number))
  (define subrefid (format "fn-~a-expand" footnote-number))
  (if (equal? note-mode "sidenotes")
      `(span [[class "sidenote-wrapper"]]
             (span (label [[for ,refid] [class "margin-toggle sidenote-number"]])
                   (input [[type "checkbox"] [id ,refid] [class "margin-toggle"]])
                   (input [[type "checkbox"] [id ,subrefid] [class "margin-expand"]])
                   (label [[for ,subrefid] [class ,(if expanded "sidenote expanded" "sidenote")] [hyphens "none"]] ,@transformed-content)))
      `(span [[class "sidenote-wrapper"]]
             (a [[href ,(format "#fn-~a" footnote-number)] [class "undecorated"]] (span [[class "sidenote-number"] [id ,(format "fn-source-~a" footnote-number)]])))))

; Helpers for decoding
; ------------------------------------------------------------

; Custom hyphenation that doesn't break URLs.
(define (custom-hyphenation x)
  (define allowed-capitalized-hyphenations
    (list "Atmos-View" "un-itali-cized"))
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

(define (add-html-footnotes tx)
  (define footnote-class
    (if (equal? note-mode "sidenotes") "endnotes print-only" "endnotes"))
  (txexpr (get-tag tx) (get-attrs tx) `(,@(get-elements tx) (div ((class ,footnote-class)) ,(when/splice (not (empty? footnote-list)) (heading "Notes")) ,@footnote-list))))

; Only the simplest markdown links are handled this way.
; More complex links (that have formatting within the text,
; for example), require you to fall back to explicit Pollen
; annotation (◊a[#:href ""]{◊em{some formatted link text}}).
(define/contract (parse-md-links elements)
  (txexpr-elements? . -> . txexpr-elements?)
  (define (transform-strings element)
    (if (string? element)
        (parse-markdown-links element)
        `(,element)))
  (append* (map transform-strings elements)))

(define (root . elements)
  ; This two-level decode is necessary because some of the processing requires paragraphs to be
  ; formed in order to have strings and sidenote-wrappers as txexpr elements.
  (decode (txexpr 'root empty (get-elements
                               (decode (add-html-footnotes (txexpr 'root empty elements))
                                       #:exclude-tags '(pre no-formatting)
                                       #:txexpr-proc (compose1 custom-hyphenation show-necessary-short-forms)
                                       ; Double line breaks create new paragraphs. Single line breaks are ignored.
                                       #:txexpr-elements-proc (compose1 decode-double-breaks-into-paras)
                                       #:string-proc (compose1 smart-quotes smart-dashes))))
          #:exclude-tags '(pre no-formatting)
          #:txexpr-proc insert-sidenote-commas
          #:txexpr-elements-proc (compose1 parse-md-links merge-successive-strings)))

(provide declare-work)
(provide format-work)
(provide cite)
(provide (all-defined-out))

(module setup racket/base
  (require racket/path)
  (require racket/string)
  (define (omitted-path? path)
    (or (equal? (path->string (file-name-from-path path)) ".travis.yml")
        (equal? (path->string (file-name-from-path path)) ".gitattributes")
        (equal? (path->string (file-name-from-path path)) "deploy-to-live.yml")
        (equal? (path->string (file-name-from-path path)) "cars.xml")
        (string-suffix? (path->string (file-name-from-path path)) "template.html")
        (string-suffix? (path->string (file-name-from-path path)) "~")))
  (provide (all-defined-out)))
