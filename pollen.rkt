#lang racket

(require racket/path)
(require racket/string)
(require pollen/core)
(require pollen/tag)
(require pollen/decode txexpr)
(require pollen/setup)
(require (for-syntax racket/syntax))
(require (submod hyphenate safe))

(require "util.rkt")
(require "markdown.rkt")
(require "citation-system.rkt")

(define template-message "This file was rendered by Pollen. Don't edit this file directly. It will be overwritten when Pollen re-renders.")
(define site-author "Sancho McCann")
(define site-title "Sancho McCann")
(define site-root "https://sanchom.github.io")

; Some globals for managing footnotes/sidenotes.
(define note-mode "sidenotes")
(define footnote-list empty)
(define margin-note-number 0)

; Some globals for managing interaction with the citation system.
(define short-form-needed (make-hash))
(define first-place-cited (make-hash))
(define most-recent-ibid-or-supra #f)

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

(define (processed-title src)
  (smart-dashes (select-from-metas 'page-title src)))

; Simple replacements or tag aliases.
(define elide "[…]")

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

; A tiny social media logo.
(define (little-logo #:href href #:img img)
  `(a ((href ,href) (class "undecorated")) (img ((class "little-logo") (width "30px") (src ,img)))))

; An outline around some text to give a bit of visual emphasis.
(define (outline . content)
  `(span [[class "outline"]] ,@content))

; Some code styling
(define (codeblock . content)
  `(blockquote [[class "code"]] (pre [[class "code"]] ,@content)))

(define (tt . content)
  `(span [[class "code"]] ,@content)) ; TODO: Use <code> instead.

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
(define-syntax (define-signal stx)
  (syntax-case stx ()
    [(_ SIGNAL TEXT)
     (with-syntax ([NOTE-SIGNAL (format-id #'SIGNAL "note-~a" #'SIGNAL)])
       #'(begin
           (define (SIGNAL id #:supra [supra #f] #:ibid [ibid #f] #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f])
             (cite (clean-param id) #:supra supra #:ibid ibid #:pinpoint pinpoint #:parenthetical parenthetical #:judge judge #:speaker speaker #:signal TEXT))
           (define (NOTE-SIGNAL id #:supra [supra #f] #:ibid [ibid #f] #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f])
             (note (SIGNAL (clean-param id) #:supra supra #:ibid ibid #:pinpoint pinpoint #:parenthetical parenthetical #:judge judge #:speaker speaker))))
       )]))

(define-signal see "See")
(define-signal see-also "See also")
(define-signal but-see "But see")
(define-signal see-eg "See e.g.")
(define-signal see-generally "See generally")

(define (note-cite id #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f] #:signal [signal #f])
  (define cleaned-id (clean-param id))
  (note (cite cleaned-id #:supra #f #:ibid #f #:pinpoint pinpoint #:parenthetical (clean-param parenthetical) #:judge (clean-param judge) #:speaker (clean-param speaker) #:signal (clean-param signal))))

; Defines a little sidenote or footnote (depending on the mode), numbered, and by default collapsed
; to a small height. In print, these are all footnotes.
(define (note #:expanded [expanded #f] . content)
  (define footnote-number (+ 1 (length footnote-list)))

  ; Sweep through the content, replacing any data-short-form-pre-placeholder with data-short-form-placeholder.
  ; We do this only in the note context because if a work is just "cited" (i.e. rendered) not in a footnote or sidenote,
  ; then it isn't part of the reference-counting/back-reference (ibid/supra) system.
  (define (transform-short-form-placeholder tx)
    (if (attrs-have-key? tx 'data-short-form-pre-placeholder)
        (txexpr (get-tag tx) `[[data-short-form-placeholder ,(attr-ref tx 'data-short-form-pre-placeholder)]] empty)
        tx))

  (define (extract-from-attr tx key)
    (define value (attr-ref tx key))
    (if (equal? value "false") #f value))

  ; Collects reference-count and first-reference info and transforms subsequent references into supra/ibid forms.
  (define (transform-full-cites-into-backrefs tx)
    (if (and (attrs-have-key? tx 'class)
             (string-contains? (attr-ref tx 'class) "full-form-citation"))
        (let* ([id (attr-ref tx 'data-citation-id)]
               [first-cite (if (hash-has-key? first-place-cited id) (hash-ref first-place-cited id) #f)]
               [ibid (and first-cite (equal? (car most-recent-ibid-or-supra) id) (equal? (- footnote-number 1) (cdr most-recent-ibid-or-supra)))])
          (when (and first-cite (not ibid)) (hash-set! short-form-needed id #t))
          (when (not (hash-has-key? first-place-cited id)) (hash-set! first-place-cited id footnote-number))
          (set! most-recent-ibid-or-supra (cons id footnote-number))
          ; If this work was previous cited, take its full-form citation and replace it with an ibid or supra.
          (if first-cite
              (cite id #:supra first-cite #:ibid ibid #:pinpoint (extract-from-attr tx 'data-citation-pinpoint)
                           #:parenthetical (extract-from-attr tx 'data-citation-parenthetical)
                           #:judge (extract-from-attr tx 'data-citation-judge)
                           #:speaker (extract-from-attr tx 'data-citation-speaker)
                           #:signal (extract-from-attr tx 'data-citation-signal))
              tx)
         )
        tx))

  (define transformed-content
    (decode-elements content
                     #:txexpr-proc (compose1 transform-short-form-placeholder transform-full-cites-into-backrefs)))

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

; Sweeps through all short-form placeholders (which are empty spans before this point)
; and inserts the work's short-form if it was ever cited a second time.
(define (show-necessary-short-forms tx)
  (define (short-form-needed? id)
    (and (hash-has-key? short-form-needed id)
         (hash-ref short-form-needed id)))
  (if (and (attrs-have-key? tx 'data-short-form-placeholder)
           (short-form-needed? (attr-ref tx 'data-short-form-placeholder)))
      (txexpr (get-tag tx) (get-attrs tx) `(" [" ,(hash-ref (hash-ref work-metadata (attr-ref tx 'data-short-form-placeholder)) 'short-form) "]"))
      tx))

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
                                       #:exclude-tags '(pre)
                                       #:txexpr-proc (compose1 custom-hyphenation show-necessary-short-forms)
                                       ; Double line breaks create new paragraphs. Single line breaks are ignored.
                                       #:txexpr-elements-proc (compose1 decode-double-breaks-into-paras)
                                       #:string-proc (compose1 smart-quotes smart-dashes))))
          #:exclude-tags '(pre)
          #:txexpr-proc insert-sidenote-commas
          #:txexpr-elements-proc (compose1 parse-md-links merge-successive-strings)))

(provide declare-work)
(provide cite)
(provide (all-defined-out))

(module setup racket/base
  (require racket/path)
  (require racket/string)
  (define (omitted-path? path)
    (or (equal? (path->string (file-name-from-path path)) ".travis.yml")
        (equal? (path->string (file-name-from-path path)) "cars.xml")
        (string-suffix? (path->string (file-name-from-path path)) "template.html")
        (string-suffix? (path->string (file-name-from-path path)) "~")))
  (provide (all-defined-out)))
