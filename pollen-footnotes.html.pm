#lang pollen

◊define-meta[page-title]{A footnote tag for Pollen}
◊define-meta[short-title]{Pollen footnotes}
◊define-meta[snippet]{How I implemented a footnote tag for Pollen.}
◊define-meta[original-date]{2018-02-17}
◊define-meta[edited-date]{2018-03-07}

◊title{A footnote tag for Pollen}
◊subtitle{Sancho McCann}

In unspecialized ◊a[#:href
"https://docs.racket-lang.org/pollen/third-tutorial.html"]{Pollen
markup}, tags are converted directly into associated html
elements. Most authors will end up adding to this default behaviour by
implementing custom tags that do more. I've started to add features
as I need them, and I've enjoyed thinking about how to keep my
customizations simple.

Here's how I implemented footnotes.◊note[#:expanded #t]{You can look
at the full source code at ◊a[#:href
"https://github.com/sanchom/sanchom.github.io"]{github.com}. It has
probably changed since I wrote this, so to browse the source at the
time of this writing, see ◊a[#:href
"https://github.com/sanchom/sanchom.github.io/tree/fb2836e38fb781b1c827478b085788de3beb51d9"]{this
git ref}.}

◊heading{What I want}

I like how some journals render footnotes as sidenotes in the web
versions of their articles. This keeps the notes as close as possible
to the related main text. I want to be able to choose whether a
particular article should use sidenotes or footnotes.

I also want the print view to use footnotes even if the web view used
sidenotes. Sidenotes cram the limited width that is available on a
printed page. And, sidenotes can be quite long. Unless they are
collapseable, like they are in the web view, they will push subsequent
sidenotes far from their anchor in the main text.

I want sidenotes to look nice on small screens. They can't just stay
in the margin; there just isn't enough width.

I want footnotes, if displayed, to have links back to their anchors
in the main text.

◊heading{Influences}

◊itemize{
◊a[#:href
"https://harvardlawreview.org/2018/01/robins-v-spokeo-inc/"]{Harvard
Law Review} uses expandable sidenotes.

I took a lot of the style for this site from ◊a[#:href
"https://edwardtufte.github.io/tufte-css/"]{Tufte CSS}. For sidenotes,
though, I especially appreciated their examples of linked labels and
checkboxes, and hiding sidenotes on small screens.

Wikipedia's ◊a[#:href
"https://en.wikipedia.org/wiki/Michael_Jordan#References"]{references}
include back-links from the endnote to the anchor in the main text.
}

◊heading{Solution}

I implemented a custom tag: ◊tt{◊"◊"note}. Here's its implementation
in ◊tt{pollen.rkt}.

◊codeblock{
(define (note #:expanded [expanded #f] . content)
  (define footnote-number (+ 1 (length footnote-list)))
  (set! footnote-list
        (append footnote-list (list `(p ([class "footnote"] [id ,(format "fn-~a" footnote-number)])
                                        ,(format "~a. " footnote-number) (a [[href ,(format "#fn-source-~a" footnote-number)] [class "backlink undecorated"]] " ⌃ ") ,@content))))
  (define refid (format "fn-~a" footnote-number))
  (define subrefid (format "fn-~a-expand" footnote-number))
  (if (equal? note-mode "sidenotes")
    `(span (label [[for ,refid] [class "margin-toggle sidenote-number"]])
           (input [[type "checkbox"] [id ,refid] [class "margin-toggle"]])
           (input [[type "checkbox"] [id ,subrefid] [class "margin-expand"]])
           (label [[for ,subrefid] [class ,(if expanded "sidenote expanded" "sidenote")] [hyphens "none"]] ,@content))
    `(a [[href ,(format "#fn-~a" footnote-number)] [class "undecorated"]] (span [[class "sidenote-number"] [id ,(format "fn-source-~a" footnote-number)]]))))
}

This adds a ◊tt{txexpr} to a footnote list that is built up through
each successive encounter with a ◊tt{◊"◊"note} tag. They will all be
included during a final decoding pass, but they are not inserted at
the location of the original ◊tt{◊"◊"note} tag. What ◊em{does} get
inserted in place of the ◊tt{◊"◊"note} tag depends on whether the
article is being rendered in footnote mode or sidenote mode.

◊sub-heading{Sidenote mode}

In sidenote mode, I insert a group of labels and hidden checkboxes,
all grouped within a ◊tt{span}.◊note[#:expanded #t]{This introduces a
limitation that my notes can't have any block elements as
children, but that's alright. If I'm inserting block elements into a
note, it probably shouldn't be a note.} Here's what the
rendered html ends up looking like:
  
◊codeblock{
<span>
  <label for="fn-1" class="margin-toggle sidenote-number"></label>
  <input type="checkbox" id="fn-1" class="margin-toggle"/>
  <input type="checkbox" id="fn-1-expand" class="margin-expand"/>
  <label for="fn-1-expand" class="sidenote expanded" hyphens="none">
    This introduces a limitation that my notes can’t have any block
    elements as children, but that’s alright. If I’m inserting block
    elements into a note, it probably shouldn’t be a note.
  </label>
</span>
}

CSS controls how these are all displayed. On a wide screen, the note
is rendered in the right margin. On a narrow screen, the main content
takes the full width of the screen and the note get's hidden. It can
be displayed between lines of the main text by clicking the note's
number.◊note{If you're not already reading this on a small screen, you
can preview this behaviour by narrowing this browser window.} Long
notes are truncated until they are clicked on. The note text itself
acts as a checkbox that triggers some CSS selectors that toggle
whether the content is truncated.◊note{When you have many sidenotes in
quick succession, if they aren't truncated, the later sidenotes end up
being placed far from their anchors.} I can disable truncation for
individual footnotes like this: ◊tt{◊"◊"note[#:expanded #t]{This
sidenote content will never be truncated.}} I did that for sidenote 2
up there.

What about that list of footnotes that I built up? After the
◊tt{decode} of the ◊tt{root} element, the list of footnotes is
inserted the end of the document:

◊codeblock{
(define (add-footnotes tx)
  (define footnote-class
    (if (equal? note-mode "sidenotes") "endnotes print-only" "endnotes"))
  (txexpr (get-tag tx) (get-attrs tx) `(,@(get-elements tx) (div ((class ,footnote-class)) ,(when/splice (not (empty? footnote-list)) (heading "Notes")) ,@footnote-list))))
}

◊codeblock{
(define (root . elements)
  (add-footnotes
   (decode (txexpr 'root empty elements)
           #:exclude-tags '(pre)
           #:txexpr-proc custom-hyphenation
           #:txexpr-elements-proc decode-double-breaks-into-paras
           #:string-proc (compose1 smart-quotes smart-dashes))))
}

CSS renders these invisible except during printing. When the document
is printed, I use CSS selectors to hide all sidenotes and instead
display the footnotes.

◊sub-heading{Footnote mode}

In footnote mode, the ◊tt{◊"◊"note} tag inserts less stuff at the
point of insertion: just a link that jumps to the footnote at the
bottom of the article. And the ◊tt{id} in the ◊tt{span} gives the
footnote a reference to link back to.

◊codeblock{
<a href="#fn-1" class="undecorated">
  <span class="sidenote-number" id="fn-source-1"></span>
</a>
}

In footnote mode, the footnote actually gets displayed. It has a
little back-link that jumps up to the footnote's anchor in the main
text. That back-link is hidden in the print view.

◊sub-heading{Choosing the mode}

My Pollen setup defaults to sidenote mode, but as an author, I can
make an article use footnote mode by calling ◊tt{◊"◊"use-footnotes[]}
before the first ◊tt{◊"◊"note} tag.

◊heading{The CSS}

Pollen is responsible for rendering the necessary tags, classes, and
IDs, but the CSS is also doing a lot of work.

◊codeblock{
.sidenote {
  text-align: left;
  color: #555;
  float: right;
  clear: right;
  margin-right: -40%;
  width: 30%;
  margin-top: 0;
  margin-bottom: 0.5rem;
  font-size: 0.7rem;
  line-height: 1.3;
  vertical-align: baseline;
  position: relative;
  text-overflow: ellipsis;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}

.footnote {
  text-align: left;
  color: #111;
  font-size: 0.7rem;
  line-height: 1.3;
}

.sidenote.expanded { -webkit-line-clamp: 300; }

.sidenote-number { counter-increment: sidenote-counter; }

.sidenote-number:after, .sidenote:before {
  font-family: et-book-roman-old-style;
  position: relative;
  vertical-align: baseline;
}

.sidenote-number:after {
  content: counter(sidenote-counter);
  font-size: 0.7rem;
  top: -0.5rem;
  left: 0.1rem;
}

.sidenote:before { content: counter(sidenote-counter) ". "; top: 0rem; }

input.margin-toggle { display: none; }
input.margin-expand { display: none; }
label.sidenote-number { display: inline; }

.margin-expand:checked + .sidenote {
  text-overflow: ellipsis;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 300;
  -webkit-box-orient: vertical;
}

@media all {
  .print-only { display: none; }
}

@media print {
  .sidenote, .backlink, .header { display: none; }
  .endnotes { display: block; }
}

@media screen and (max-width:720px) {
  .sidenote { display: none; }

  .margin-toggle:checked ~ .sidenote {
    color: #111;
    font-size: 0.8rem;
    display: block;
    float: left;
    left: 0rem;
    clear: both;
    width: 85%;
    margin: 1rem 7.5%;
    vertical-align: baseline;
    position: relative;
  }

  label { cursor: pointer; }
}
}

◊heading{Commas}

I also wanted to have Pollen automatically detect series of
consecutive ◊tt{◊"◊"note} tags and insert commas in between
them.◊note{Like} ◊note{this.} My solution was to wrap the entire set
of tags that get inserted due to a ◊tt{◊"◊"note} tag with a
◊tt{<span class="sidenote-wrapper">◊|elide|</span>}. So, whether it's
a link to a footnote, or a quadruple of elements that enable the
sidenote behaviour, it gets wrapped with that tag. This gives the
Pollen decoder something to look for---something to insert commas
between.

I implemented this as a ◊tt{txexpr-proc} that runs during the decode
of the root element.

◊codeblock{
(define (insert-sidenote-commas tx) ; Will run on every txexpr.
  ; Just defining some helper functions.
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
  ; The function will pass over the elements (children)
  ; of the txexpr, looking for successive sidenote elements
  ; between which to put a comma.
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
}

The nesting got a little crazy there, but this was fun to think about
and write. The ◊a[#:href
"https://docs.racket-lang.org/guide/let.html#%28part._.Named_let%29"]{◊tt{named-let}}
is a way to do tail-recursion.

◊heading{Not done yet}

This will probably never be done, but next, I want to make better use
of HTML5's semantic tags, like ◊tt{aside} and ◊tt{cite}.

◊heading{Other approaches}

It's always interesting to see solutions that others have come up
with. A ◊a[#:href
"https://groups.google.com/forum/#!topic/pollenpub/laWL4SWx0Zc"]{post
by Joel Dueck} on the ◊a[#:href
"https://groups.google.com/forum/#!forum/pollenpub"]{pollenpub Google
group} is actually what prompted me to write this. I'll try to keep a
little list here of alternative approaches.
