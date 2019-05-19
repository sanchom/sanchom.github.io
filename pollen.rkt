#lang racket

(require racket/path)
(require racket/random)
(require racket/string)
(require pollen/core)
(require pollen/tag)
(require pollen/decode txexpr)
(require pollen/setup)
(require (submod hyphenate safe))

(define template-message "This file was rendered by Pollen. Don't edit this file directly. It will be overwritten when Pollen re-renders.")
(define site-author "Sancho McCann")
(define site-title "Sancho McCann")
(define site-root "https://sanchom.github.io")

(define note-mode "sidenotes")
(define footnote-list empty)
(define margin-note-number 0)

(define work-metadata (make-hash))
(define short-form-needed (make-hash))
(define first-cites (make-hash))
(define most-recent-backref #f)

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

(define (nbsp)
  (string->symbol "nbsp"))

(define (non-breaking-hyphen)
  (string->number "8209"))

(define (lozenge)
  (string->symbol "loz"))

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

; Bold+emphasis
(define (bem . content)
  `(b (em ,@content)))

(define (em . content)
  `(em ,@content))

(define (b . content)
  `(b ,@content))

(define (a #:href href . content)
  `(a [[href ,href]] ,@content))

; A tiny social media logo.
(define (little-logo #:href href #:img img)
  `(a ((href ,href) (class "undecorated")) (img ((class "little-logo") (width "30px") (src ,img)))))

; A bracketed link.
(define (bracketed-link #:word [word "pdf"] #:url url)
  `(span "[" (a ((href ,url)) ,word) "]"))

; An outline around some text to give a bit of visual emphasis.
(define (outline . content)
  `(span [[class "outline"]] ,@content))

; A thumbnail.
(define (thumbnail #:big big-url #:small [small-url big-url])
  `(div [[class "thumbnail"]] (a ((href ,big-url) (class "undecorated")) (img ((class "thumbnail") (src ,small-url)))) (div [[class "clear"]])))

(define (codeblock . content)
  `(blockquote [[class "code"]] (pre [[class "code"]] ,@content)))

(define (tt . content)
  `(span [[class "code"]] ,@content)) ; TODO: Use <code> instead.

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

; Citation system. Following the McGill Guide, with Chicago Manual of Style for any abiguities.
; ----------------------------------

(define (strip-at str)
  (if (string-prefix? str "at ")
      (substring str 3)
      str))

(define (pinpoint-is-pages? str) (or (string-prefix? str "p ")
                                     (string-prefix? str "pp ")
                                     (string-prefix? str "page ")
                                     (string-prefix? str "pages ")
                                     (regexp-match-exact? #rx"([-0-9]*)" str)))
(define (pinpoint-requires-at? str) (or (string-prefix? str "para") (pinpoint-is-pages? str)))
(define (pinpoint-requires-comma? str) (not (pinpoint-requires-at? str)))
(define (normalize-pinpoint pinpoint)
  (define to-replace (first (string-split pinpoint)))
  (define replacement
    (case (string-downcase to-replace)
      [("page" "p") ""]
      [("pages" "pp") ""]
      [("paragraph" "para.") "para"]
      [("paragraphs" "paras.") "paras"]
      [("clause" "cl.") "cl"]
      [("clauses" "cls.") "cls"]
      [("section" "s.") "s"]
      [("sections" "ss.") "ss"]
      [else to-replace]))
  (string-replace pinpoint to-replace replacement #:all? #f))

(define (render-pinpoint pinpoint)
  (if pinpoint
      (if pinpoint-requires-at? (format " at ~a" (normalize-pinpoint pinpoint)) (format ", ~a" (normalize-pinpoint pinpoint)))
      ""))

; TODO: Can this be a contract?
(define (validate-work-or-die w)
  (validate-short-form w)
  (case (hash-ref w 'type)
    [("article") (validate-article w)]
    [("thesis") (validate-thesis w)]
    [("proceedings") (validate-proceedings w)]
    [("unpublished") (validate-unpublished w)]
    [("legal-case") (validate-legal-case w)]
    [("legal-case-US") (validate-legal-case-US w)]
    [("bill") (validate-bill w)]
    [("statute") (validate-statute w)]
    [("debate") (validate-debate w)]
    [("book") (validate-book w)]
    [("magazine/news") (validate-magazine/news w)]
    [else (raise-user-error "Unrecognized type for work: " (hash-ref w 'type))]))

(define (short-form-used? s)
  (ormap (lambda (v) (equal? (hash-ref v 'short-form) s)) (hash-values work-metadata)))

(define (validate-short-form w)
  (when (short-form-used? (hash-ref w 'short-form))
    (raise-user-error "Attempt to use duplicate short-form: " `(,(hash-ref w 'short-form) ,w))))

(define (validate-article w)
  (define mandatory-elements '(title author-family author-given journal volume))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "article is missing required field: " e)))
   mandatory-elements))

(define (validate-book w)
  (define mandatory-elements '(title year))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "book is missing required field: " e)))
   mandatory-elements))

(define (validate-thesis w)
  (define mandatory-elements '(title author-family author-given institution thesis-description year))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "thesis is missing required field: " e)))
   mandatory-elements))

(define (validate-proceedings w)
  (define mandatory-elements '(title author-family author-given proceedings year))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "proceedings is missing required field: " e)))
   mandatory-elements))

(define (validate-unpublished w)
  (define mandatory-elements '(title author-family author-given year))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "unpublished is missing required field: " e)))
   mandatory-elements))

(define (validate-bill w)
  (define mandatory-elements '(number title legislative-body year))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "bill is missing required field: " e)))
   mandatory-elements))

(define (validate-statute w)
  (define mandatory-elements '(title volume year chapter))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "statute is missing required field: " e)))
   mandatory-elements))

(define (validate-debate w)
  (define mandatory-elements '(jurisdiction legislative-body year))
  (when (and (hash-ref w 'title) (not (hash-ref w 'reading)))
    (raise-user-error "specified the title of a bill under debate without specifying which reading: " w))
  (when (and (hash-ref w 'reading) (not (hash-ref w 'title)))
    (raise-user-error "specified a reading of a bill without specifying the title of the bill: " w))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "debate is missing required field: " e)))
   mandatory-elements))

(define (validate-magazine/news w)
  (define mandatory-elements '(title))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "magazine/news is missing required field: " e)))
   mandatory-elements))

(define (year-is-necessary? citation)
  ; Are the first alphanumeric characters in the citation a four-digit year? Ie. Is there a sequence of four consecutive
  ; digits before any letter?
  (not (regexp-match? #px"[[:digit:]]{4}" (first (regexp-match #px"\\S*[[:space:]]" citation)))))

(define (validate-legal-case w)
  (define mandatory-elements '(title citation))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "legal-case is missing required field: " e)))
   mandatory-elements)
  (when (and (year-is-necessary? (hash-ref w 'citation)) (not (hash-ref w 'year)))
    (raise-user-error "Failed to declare year when year is not the first element of the first citation: " (hash-ref w 'citation)))
  )

(define (validate-legal-case-US w)
  (define mandatory-elements '(title citation year))
  (for-each
   (lambda (e)
     (when (not (hash-ref w e))
       (raise-user-error "legal-case-US is missing required field: " e)))
   mandatory-elements)
  )

(define (make-short-form type author title)
  (case type
    [("legal-case" "legal-case-US" "statute" "bill") `(em ,title)]
    [("magazine/news") `(span ,(when/splice author author ", “") ,title ,(when/splice author "”"))]
    [else `(span ,(when/splice author author ", “") ,title ,(when/splice author "”"))]))

(define (clean-param param)
  (if param (string-normalize-spaces param) param))

(define (get-given-from-author author)
  (define parts (string-split (clean-param author)))
  (if (not (equal? (length parts) 2))
      (raise-user-error "Specified an author (a shortcut keyword) with more than two parts: " author)
      (first parts)))

(define (get-family-from-author author)
  (define parts (string-split (clean-param author)))
  (if (not (equal? (length parts) 2))
      (raise-user-error "Specified an author (a shortcut keyword) with more than two parts: " author)
      (second parts)))

(define (extract-first-page pages)
  (first (regexp-match #rx"[0-9]+" pages)))

(define (declare-work #:type [type #f]
                      #:title [title #f]
                      #:author [author #f] ; a shortcut for simple "author-given author-family" names --- incompatible with author-given / author-family
                      #:author-given [author-given #f]
                      #:author-family [author-family #f]
                      #:author2-given [author2-given #f]
                      #:author2-family [author2-family #f]
                      #:author3-given [author3-given #f]
                      #:author3-family [author3-family #f]
                      #:journal [journal #f]
                      #:year [year #f] ; alias for "date" --- incompatible with date
                      #:date [date #f] ; alias for "year" --- incompatible with year
                      #:volume [volume #f]
                      #:publication [publication #f] ; for magazine/news
                      #:issue [issue #f]
                      #:citation [citation #f]
                      #:jurisdiction [jurisdiction #f]
                      #:institution [institution #f]
                      #:legislative-body [legislative-body #f]
                      #:number [number #f]
                      #:chapter [chapter #f] ; for statutes
                      #:reading [reading #f] ; for legislative debates
                      #:proceedings [proceedings #f]
                      #:publisher [publisher #f]
                      #:publisher-location [publisher-location #f]
                      #:thesis-description [thesis-description #f]
                      #:description [description #f]
                      #:comment-info [comment-info #f]
                      #:forthcoming [forthcoming #f]
                      #:pages [pages #f] ; will extract the first-page from this; incompatible with first-page
                      #:first-page [first-page #f]
                      #:url [url #f]
                      #:short-form [short-form #f]
                      #:id [id #f]
                      #:and-render? [and-render? #f])
  (when (and author (or author-given author-family))
    (raise-user-error "You used #:author and either #:author-given or #:author-family. #:author is a substitute for the latter when the name is simple." `(,author ,author-given ,author-family)))
  (when (and year date)
    (raise-user-error "You specified both a year and a date. Use only one of these." `(,year ,date ,title)))
  (when (and pages first-page)
    (raise-user-error "You specified both pages and first-page. Use only one of these." `(,pages ,first-page)))
  ; If id isn't specified, then just make a random one. This work will never be able to be cited.
  (define id-to-use (if id (clean-param id) (clean-param (format "~a" (crypto-random-bytes 20)))))
  (when (hash-has-key? work-metadata id-to-use) (raise-user-error "duplicate id" id-to-use))
  (define w (hash 'type type
                  'id id-to-use
                  'title (clean-param title)
                  'author-given (if author (get-given-from-author author) (clean-param author-given))
                  'author-family (if author (get-family-from-author author) (clean-param author-family))
                  'author2-given (clean-param author2-given)
                  'author2-family (clean-param author2-family)
                  'author3-given (clean-param author3-given)
                  'author3-family (clean-param author3-family)
                  'journal (clean-param journal)
                  'publication (clean-param publication)
                  'year (if year year date)
                  'volume volume
                  'issue issue
                  'citation (clean-param citation)
                  'jurisdiction (clean-param jurisdiction)
                  'institution (clean-param institution)
                  'legislative-body (clean-param legislative-body)
                  'number (clean-param number)
                  'chapter (clean-param chapter)
                  'reading (clean-param reading)
                  'proceedings (clean-param proceedings)
                  'publisher (clean-param publisher)
                  'publisher-location (clean-param publisher-location)
                  'thesis-description (clean-param thesis-description)
                  'description (clean-param description)
                  'comment-info (clean-param comment-info)
                  'forthcoming forthcoming
                  'first-page (if pages (extract-first-page pages) first-page)
                  'url url
                  'short-form (if short-form
                                  `(span ,(style-title (clean-param short-form)))
                                  (make-short-form type (if author (get-family-from-author author) (clean-param author-family)) title))))
  (validate-work-or-die w)
  (hash-set! work-metadata id-to-use w)
  (when (and (not id) (not (equal? and-render? "no"))) (cite id-to-use)))

(define (style-title markedup-title)
  (define italic-range (regexp-match-positions #rx"\\*.*\\*" markedup-title))
  (if italic-range
      (let* ([before (substring markedup-title 0 (car (car italic-range)))]
             [special-content (substring markedup-title (+ (car (car italic-range)) 1) (- (cdr (car italic-range)) 1))]
             [after (substring markedup-title (cdr (car italic-range)))])
        `(@ ,before (em ,special-content) ,after))
      `(@ ,markedup-title)))

(define (format-pinpoint pinpoint)
  (define stripped (strip-at pinpoint))
  `(@ ,(if (pinpoint-requires-at? stripped) " at " ", ") ,(normalize-pinpoint stripped)))

(define (see id #:supra [supra #f] #:ibid [ibid #f] #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f])
  (cite id #:supra supra #:ibid ibid #:pinpoint pinpoint #:parenthetical parenthetical #:judge judge #:speaker speaker #:signal "See"))

(define (see-also id #:supra [supra #f] #:ibid [ibid #f] #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f])
  (cite id #:supra supra #:ibid ibid #:pinpoint pinpoint #:parenthetical parenthetical #:judge judge #:speaker speaker #:signal "See also"))

(define (but-see id #:supra [supra #f] #:ibid [ibid #f] #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f])
  (cite id #:supra supra #:ibid ibid #:pinpoint pinpoint #:parenthetical parenthetical #:judge judge #:speaker speaker #:signal "But see"))

(define (see-eg id #:supra [supra #f] #:ibid [ibid #f] #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f])
  (cite id #:supra supra #:ibid ibid #:pinpoint pinpoint #:parenthetical parenthetical #:judge judge #:speaker speaker #:signal "See e.g."))

(define (see-generally id #:supra [supra #f] #:ibid [ibid #f] #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f])
  (cite id #:supra supra #:ibid ibid #:pinpoint pinpoint #:parenthetical parenthetical #:judge judge #:speaker speaker #:signal "See generally"))

; Renders a full note-form of the work.
(define (cite id #:supra [supra #f] #:ibid [ibid #f] #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f] #:signal [signal #f])
  (define w (hash-ref work-metadata (clean-param id)))
  (if ibid
      `(span [[class "bibliography-entry"] [data-citation-id ,id]]
             ,(when/splice signal signal " ")
             ,(if signal `(em "ibid") `(em "Ibid"))
             ,(when/splice parenthetical " (" parenthetical)
             ,(when/splice pinpoint (format-pinpoint pinpoint))
             ,(when/splice judge ", " judge)
             ,(when/splice parenthetical ")")
             ,(when/splice speaker " (" speaker ")") ; Only relevant for debates (TODO: consider specializing back-reference forms).
             ".")
      (if supra
          `(span [[class "bibliography-entry"] [data-citation-id ,id]]
                 ,(when/splice signal signal " ")
                 ,(hash-ref w 'short-form) ", "
                 (em "supra") ,(format " note ~a" supra)
                 ,(when/splice parenthetical " (" parenthetical)
                 ,(when/splice pinpoint (format-pinpoint pinpoint))
                 ,(when/splice judge ", " judge)
                 ,(when/splice parenthetical ")")
                 ,(when/splice speaker " (" speaker ")")
                 ".")
          `(span [[class "bibliography-entry full-form-citation"]
                  [data-citation-id ,id]
                  [data-citation-pinpoint ,(if pinpoint pinpoint "false")]
                  [data-citation-parenthetical ,(if parenthetical parenthetical "false")]
                  [data-citation-judge ,(if judge judge "false")]
                  [data-citation-speaker ,(if speaker speaker "false")]
                  [data-citation-signal ,(if signal signal "false")]
                  ]
                 ,(when/splice signal signal " ")
                 ,(case (hash-ref w 'type)
                    [("article") (render-article w pinpoint parenthetical)]
                    [("book") (render-book w pinpoint parenthetical)]
                    [("thesis") (render-thesis w pinpoint parenthetical)]
                    [("proceedings") (render-proceedings w pinpoint parenthetical)]
                    [("unpublished") (render-unpublished w pinpoint parenthetical)]
                    [("legal-case") (render-legal-case w pinpoint parenthetical judge)]
                    [("legal-case-US") (render-legal-case-US w pinpoint parenthetical judge)]
                    [("bill") (render-bill w pinpoint parenthetical)]
                    [("statute") (render-statute w pinpoint parenthetical)]
                    [("debate") (render-debate w pinpoint speaker)]
                    [("magazine/news") (render-magazine/news w pinpoint parenthetical)]
                    [else (raise-user-error "No implementation for rendering this type of citation: " (hash-ref w 'type))])))))

(define (format-authors w)
  `(@ ,(hash-ref w 'author-given)
      " "
      ,(hash-ref w 'author-family)
      ,(when/splice (and (hash-ref w 'author2-family) (not (hash-ref w 'author3-family))) " & ")
      ,(when/splice (and (hash-ref w 'author2-family) (hash-ref w 'author3-family)) ", ")
      ,(when/splice (hash-ref w 'author2-given) (hash-ref w 'author2-given))
      ,(when/splice (hash-ref w 'author2-family) (format " ~a" (hash-ref w 'author2-family)))
      ,(when/splice (hash-ref w 'author3-family) " & ")
      ,(when/splice (hash-ref w 'author3-given) (hash-ref w 'author3-given))
      ,(when/splice (hash-ref w 'author3-family) (format " ~a" (hash-ref w 'author3-family)))
      ))

(define (render-article w pinpoint parenthetical)
  (define styled-title (style-title (hash-ref w 'title)))
  `(@
    ,(format-authors w)
    ", “"
    ,(if (hash-ref w 'url) `(a [[href ,(hash-ref w 'url)]] ,styled-title) styled-title)
    "”"
    ,(when/splice (hash-ref w 'comment-info) ", " (hash-ref w 'comment-info) ", ")
    ,(when/splice (hash-ref w 'year) " (" (hash-ref w 'year) ") ")
    ,(hash-ref w 'volume)
    ,(when/splice (hash-ref w 'issue) ":" (hash-ref w 'issue))
    " "
    (em ,(hash-ref w 'journal))
    " "
    ,(when/splice (hash-ref w 'forthcoming) " [forthcoming in " (hash-ref w 'forthcoming) "]")
    ,(when/splice (hash-ref w 'first-page) " " (hash-ref w 'first-page))
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    ,(when/splice parenthetical " (" parenthetical)
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    ,(when/splice parenthetical ")")
    "."))

(define (render-book w pinpoint parenthetical)
  (define styled-title (style-title (hash-ref w 'title)))
  `(@
    ,(when/splice (hash-ref w 'author-family) (format-authors w) ", ")
    ,(if (hash-ref w 'url) `(a [[href ,(hash-ref w 'url)]] (em ,styled-title)) `(em ,styled-title))
    " "
    " ("
    ,(when/splice (hash-ref w 'publisher-location) (hash-ref w 'publisher-location))
    ,(when/splice (and (hash-ref w 'publisher-location) (hash-ref w 'publisher)) ": ")
    ,(when/splice (hash-ref w 'publisher) (hash-ref w 'publisher))
    ,(when/splice (or (hash-ref w 'publisher-location) (hash-ref w 'publisher)) ", ")
    ,(hash-ref w 'year)
    ")"
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    ,(when/splice parenthetical " (" parenthetical)
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    ,(when/splice parenthetical ")")
    "."))

(define (render-thesis w pinpoint parenthetical)
  (define styled-title (style-title (hash-ref w 'title)))
  `(@
    ,(format-authors w)
    ", "
    ,(if (hash-ref w 'url) `(a [[href ,(hash-ref w 'url)]] (em ,styled-title)) `(em ,styled-title))
    " ("
    ,(hash-ref w 'thesis-description) ", "
    ,(hash-ref w 'institution) ", "
    ,(hash-ref w 'year)
    ")"
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    ,(when/splice parenthetical " (" parenthetical)
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    ,(when/splice parenthetical ")")
    "."
    ))

(define (render-proceedings w pinpoint parenthetical)
  (define styled-title (style-title (hash-ref w 'title)))
  `(@
    ,(format-authors w)
    ", “"
    ,(if (hash-ref w 'url) `(a [[href ,(hash-ref w 'url)]] ,styled-title) styled-title)
    "” in "
    (em ,(hash-ref w 'proceedings))
    " ("
    ,(when/splice (hash-ref w 'publisher-location) (hash-ref w 'publisher-location))
    ,(when/splice (and (hash-ref w 'publisher-location) (hash-ref w 'publisher)) ": ")
    ,(when/splice (hash-ref w 'publisher) (hash-ref w 'publisher))
    ,(when/splice (or (hash-ref w 'publisher-location) (hash-ref w 'publisher)) ", ")
    ,(hash-ref w 'year)
    ")"
    ,(when/splice (hash-ref w 'first-page) " " (hash-ref w 'first-page))
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    ,(when/splice parenthetical " (" parenthetical)
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    ,(when/splice parenthetical ")")
    "."))

(define (render-unpublished w pinpoint parenthetical)
  (define styled-title (style-title (hash-ref w 'title)))
  `(@
    ,(format-authors w)
    ", “"
    ,(if (hash-ref w 'url) `(a [[href ,(hash-ref w 'url)]] ,styled-title) styled-title)
    "” ("
    ,(when/splice (hash-ref w 'description) (hash-ref w 'description) ", ")
    ,(hash-ref w 'year)
    ")"
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    ,(when/splice parenthetical " (" parenthetical)
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    ,(when/splice parenthetical ")")
    "."))

(define (render-legal-case w pinpoint parenthetical judge)
  (define url (hash-ref w 'url))
  (define title (hash-ref w 'title))
  `(@
    (em ,(if url `(a [[href ,url]] ,title) `(span ,title)))
    ,(when/splice (year-is-necessary? (hash-ref w 'citation)) " (" (hash-ref w 'year) ")")
    ", "
    ,(hash-ref w 'citation)
    ,(when/splice (and (not parenthetical) judge) ", " judge)
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    ,(when/splice parenthetical " (" parenthetical)
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    ,(when/splice (and parenthetical judge) ", " judge)
    ,(when/splice parenthetical ")")
    "."))

(define (render-legal-case-US w pinpoint parenthetical judge)
  (define url (hash-ref w 'url))
  (define title (hash-ref w 'title))
  `(@
    (em ,(if url `(a [[href ,url]] ,title) `(span ,title)))
    ", "
    ,(hash-ref w 'citation)
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    " ("
    ,(when/splice (hash-ref w 'jurisdiction) (hash-ref w 'jurisdiction) " ")
    ,(hash-ref w 'year)
    ")"
    ,(when/splice (and (not parenthetical) judge) ", " judge)
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    ,(when/splice parenthetical " (" parenthetical)
    ,(when/splice (and parenthetical judge) ", " judge)
    ,(when/splice parenthetical ")")
    "."))

(define (render-bill w pinpoint parenthetical)
  (define url (hash-ref w 'url))
  (define title (hash-ref w 'title))
  `(@
    ,(hash-ref w 'number) ", "
    (em ,(if url `(a [[href ,url]] ,title) `(span ,title))) ", "
    ,(hash-ref w 'legislative-body) ", "
    ,(hash-ref w 'year)
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    "."))

(define (render-statute w pinpoint parenthetical)
  (define url (hash-ref w 'url))
  (define title (hash-ref w 'title))
  `(@
    (em ,(if url `(a [[href ,url]] ,title) `(span ,title))) ", "
    ,(hash-ref w 'volume) " "
    ,(hash-ref w 'year) ", "
    "c " ,(hash-ref w 'chapter)
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    ,(when/splice parenthetical " (" parenthetical)
    ,(when/splice parenthetical  ")")
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    "."))

(define (render-debate w pinpoint speaker)
  (define url (hash-ref w 'url))
  (define title (hash-ref w 'title))
  (define doc-string
    `(@ ,(hash-ref w 'jurisdiction) ", "
        (em ,(hash-ref w 'proceedings)) ", "
        ,(hash-ref w 'legislative-body) ", "
        ,(when/splice (hash-ref w 'volume) (hash-ref w 'volume))))
  `(@
    ,(when/splice title "“" title "”, ")
    ,(when/splice (hash-ref w 'reading) (hash-ref w 'reading) ", ")
    ,(if url `(a [[href ,url]] ,doc-string) `(span ,doc-string)) " "
    "(" ,(hash-ref w 'year) ")"
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    ,(when/splice speaker " (" speaker ")")
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    "."))

(define (render-magazine/news w pinpoint parenthetical)
  (define url (hash-ref w 'url))
  (define styled-title (style-title (hash-ref w 'title)))
  ; Note, title is the only required element.
  `(@
    ,(when/splice (hash-ref w 'author-family) (format-authors w) ", ")
    "“" ,(if url `(a [[href ,url]] ,styled-title) styled-title) "”"
    ,(when/splice (hash-ref w 'publication) ", " `(em ,(hash-ref w 'publication)))
    ,(when/splice (hash-ref w 'year) " (" (hash-ref w 'year) ")")
    (span [[data-short-form-pre-placeholder ,(format "~a" (hash-ref w 'id))]])
    ,(when/splice parenthetical " (" parenthetical)
    ,(when/splice pinpoint (format-pinpoint pinpoint))
    ,(when/splice parenthetical ")")
    "."))

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

(define (note-cite id #:pinpoint [pinpoint #f] #:parenthetical [parenthetical #f] #:judge [judge #f] #:speaker [speaker #f] #:signal [signal #f])
  (define cleaned-id (clean-param id))
  (note (cite cleaned-id #:supra #f #:ibid #f #:pinpoint pinpoint #:parenthetical (clean-param parenthetical) #:judge (clean-param judge) #:speaker (clean-param speaker) #:signal (clean-param signal))))

; Defines a little sidenote or footnote (depending on the mode), numbered, and by default collapsed
; to a small height. In print, these are all footnotes.
(define (note #:expanded [expanded #f] . content)
  (define footnote-number (+ 1 (length footnote-list)))

  ; Sweep through the content, replacing any data-short-form-pre-placeholder with data-short-form-placeholder
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
               [first-cite (if (hash-has-key? first-cites id) (hash-ref first-cites id) #f)]
               [ibid (and first-cite (equal? (car most-recent-backref) id) (equal? (- footnote-number 1) (cdr most-recent-backref)))])
          (when (and first-cite (not ibid)) (hash-set! short-form-needed id #t))
          (when (not (hash-has-key? first-cites id)) (hash-set! first-cites id footnote-number))
          (set! most-recent-backref (cons id footnote-number))
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

(define (show-necessary-short-forms tx)
  (define (short-form-needed? id)
    (and (hash-has-key? short-form-needed id)
         (hash-ref short-form-needed id)))
  (if (and (attrs-have-key? tx 'data-short-form-placeholder)
           (short-form-needed? (attr-ref tx 'data-short-form-placeholder)))
      (txexpr (get-tag tx) (get-attrs tx) `(" [" ,(hash-ref (hash-ref work-metadata (attr-ref tx 'data-short-form-placeholder)) 'short-form) "]"))
      tx))

(define (add-html-footnotes tx)
  (define footnote-class
    (if (equal? note-mode "sidenotes") "endnotes print-only" "endnotes"))
  (txexpr (get-tag tx) (get-attrs tx) `(,@(get-elements tx) (div ((class ,footnote-class)) ,(when/splice (not (empty? footnote-list)) (heading "Notes")) ,@footnote-list))))

(define (root . elements)
  ; TODO: Remove the need for this nested-decode. I need it now because the insert-sidenote-commas
  ; function works on txexprs, and searches for sequences of child elements that constitute
  ; successive side/footnotes. If these are at the main text level, they don't appear as children
  ; of anything until after paragraphs are formed. (Well, they're children of root, but then they're
  ; just elements. I think I could refactor this by making insert-sidenote-commas work on txexpr-elements
  ; instead of txexprs.
  (decode (txexpr 'root empty (get-elements
                               (decode (add-html-footnotes (txexpr 'root empty elements))
                                       #:exclude-tags '(pre)
                                       #:txexpr-proc (compose1 custom-hyphenation show-necessary-short-forms)
                                       ; Double line breaks create new paragraphs. Single line breaks are ignored.
                                       #:txexpr-elements-proc decode-double-breaks-into-paras
                                       #:string-proc (compose1 smart-quotes smart-dashes))))
          #:exclude-tags '(pre)
          #:txexpr-proc insert-sidenote-commas))

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
