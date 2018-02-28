#lang pollen
◊(require racket/list)

@font-face { font-family: "et-book";
             src: url("et-book/et-book/et-book-roman-line-figures/et-book-roman-line-figures.eot");
             src: url("et-book/et-book/et-book-roman-line-figures/et-book-roman-line-figures.eot?#iefix") format("embedded-opentype"), url("et-book/et-book/et-book-roman-line-figures/et-book-roman-line-figures.woff") format("woff"), url("et-book/et-book/et-book-roman-line-figures/et-book-roman-line-figures.ttf") format("truetype"), url("et-book/et-book/et-book-roman-line-figures/et-book-roman-line-figures.svg#etbookromanosf") format("svg");
             font-weight: normal;
             font-style: normal; }

@font-face { font-family: "et-book";
             src: url("et-book/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.eot");
             src: url("et-book/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.eot?#iefix") format("embedded-opentype"), url("et-book/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.woff") format("woff"), url("et-book/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.ttf") format("truetype"), url("et-book/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.svg#etbookromanosf") format("svg");
             font-weight: normal;
             font-style: italic; }

@font-face { font-family: "et-book";
             src: url("et-book/et-book/et-book-bold-line-figures/et-book-bold-line-figures.eot");
             src: url("et-book/et-book/et-book-bold-line-figures/et-book-bold-line-figures.eot?#iefix") format("embedded-opentype"), url("et-book/et-book/et-book-bold-line-figures/et-book-bold-line-figures.woff") format("woff"), url("et-book/et-book/et-book-bold-line-figures/et-book-bold-line-figures.ttf") format("truetype"), url("et-book/et-book/et-book-bold-line-figures/et-book-bold-line-figures.svg#etbookromanosf") format("svg");
             font-weight: bold;
             font-style: normal; }

@font-face { font-family: "et-book-roman-old-style";
             src: url("et-book/et-book/et-book-roman-old-style-figures/et-book-roman-old-style-figures.eot");
             src: url("et-book/et-book/et-book-roman-old-style-figures/et-book-roman-old-style-figures.eot?#iefix") format("embedded-opentype"), url("et-book/et-book/et-book-roman-old-style-figures/et-book-roman-old-style-figures.woff") format("woff"), url("et-book/et-book/et-book-roman-old-style-figures/et-book-roman-old-style-figures.ttf") format("truetype"), url("et-book/et-book/et-book-roman-old-style-figures/et-book-roman-old-style-figures.svg#etbookromanosf") format("svg");
             font-weight: normal;
             font-style: normal; }

◊; Responsive font sizes
◊(define width-for-max-font 920)
◊(define size-steps 6)
◊(define max-font-size 22)
◊(define font-size-on-small-screens 18)
◊(define small-screen-trigger (- width-for-max-font (* (- size-steps 1) 40)))
◊(define background-color "#fdfaf3")
◊(define dark-text-color "#111")
◊(define light-text-color "#373737")
◊(define blockquote-border-color "#a9a9a9")

@media all {html {font-size: ◊|max-font-size|px;}}
◊(apply string-append (map (lambda (x)
        (format "@media all and (max-width:~apx){html {font-size:~apx;}}\n" (- width-for-max-font (* x 40)) (- max-font-size x)))
      (range 0 size-steps)))

body {
font-family: et-book, "Book Antiqua", serif;
margin-top: 5em; margin-bottom: 5em; margin-left: 10%; margin-right: 33%;
max-width: 40em;
background-color: ◊|background-color|;
color: ◊|dark-text-color|;
text-align: justify;
counter-reset: sidenote-counter;
}

◊; Only h1, h2, and h3 should be used.
h1, h2, h3, h4, h5, h6 {clear: left; font-style: italic; font-weight: 400; text-align: left;}

h1 {font-size: 2.2em; font-style: normal;}  ◊; Reserved for titles
h2 {font-size: 1.5em; margin-top: 1.5em; border-top: solid 0.5px; padding-top: 0.5em;}  ◊; The main headings on a page
h3 {font-size: 1.2em;}  ◊; Sub-headings, used sparingly

p.subtitle {font-size: 1.2em; font-style: italic; margin-top: 1rem; margin-bottom: 1rem; display: block; line-height: 1;}

◊; Space for navigation links.
div.header {clear:both; font-size: 0.7rem;}
.left-header {float:left;}
.right-header {float:right;}

◊; Figure styles
figure { text-align: center; padding: 0; margin: 0;}
figure > p { margin-bottom: 0.25rem; }
figcaption { font-size:0.7rem; margin-top: 0.25rem;}

◊; Styles used for some little external links to Twitter, Wordpress.
◊; Line them up left-to-right, but centered. Don't style them as links.
div.external-link-logos { clear:left; display: flex; justify-content: center; }

a.undecorated:link {text-decoration: none; background: none;}
a.undecorated:visited {text-decoration: none; background: none;}
a.undecorated:hover {text-decoration: none; background: none;}

img.little-logo { float: left; margin-right: 1em; margin-bottom: 1em; }

◊; Other image styles.
img.thumbnail { float: left; margin-right: 1em; margin-bottom: 1em; margin-top: 0.5em; width: 150px;}
img:not(.little-logo):not(.thumbnail) { width: 100%; }

◊; Taken from Tufte-css. Plain, underlined links without cutting
◊; through descenders.
a:link, a:visited { color: inherit; }

a:link {
text-decoration: none;
background: -webkit-linear-gradient(◊|background-color|, ◊|background-color|), -webkit-linear-gradient(◊|background-color|, ◊|background-color|), -webkit-linear-gradient(#333, #333);
background: linear-gradient(◊|background-color|, ◊|background-color|), linear-gradient(◊|background-color|, ◊|background-color|), linear-gradient(#333, #333);
-webkit-background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
-moz-background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
background-repeat: no-repeat, no-repeat, repeat-x;
text-shadow: 0.03em 0 ◊|background-color|, -0.03em 0 ◊|background-color|, 0 0.03em ◊|background-color|, 0 -0.03em ◊|background-color|, 0.06em 0 ◊|background-color|, -0.06em 0 ◊|background-color|, 0.09em 0 ◊|background-color|, -0.09em 0 ◊|background-color|, 0.12em 0 ◊|background-color|, -0.12em 0 ◊|background-color|, 0.15em 0 ◊|background-color|, -0.15em 0 ◊|background-color|;
background-position: 0% 93%, 100% 93%, 0% 93%;
}

@media screen and (-webkit-min-device-pixel-ratio: 0) { a:link { background-position-y: 87%, 87%, 87%; } }

a:link::selection {
text-shadow: 0.03em 0 #b4d5fe, -0.03em 0 #b4d5fe, 0 0.03em #b4d5fe, 0 -0.03em #b4d5fe, 0.06em 0 #b4d5fe, -0.06em 0 #b4d5fe, 0.09em 0 #b4d5fe, -0.09em 0 #b4d5fe, 0.12em 0 #b4d5fe, -0.12em 0 #b4d5fe, 0.15em 0 #b4d5fe, -0.15em 0 #b4d5fe;
background: #b4d5fe;
}

a:link::-moz-selection {
text-shadow: 0.03em 0 #b4d5fe, -0.03em 0 #b4d5fe, 0 0.03em #b4d5fe, 0 -0.03em #b4d5fe, 0.06em 0 #b4d5fe, -0.06em 0 #b4d5fe, 0.09em 0 #b4d5fe, -0.09em 0 #b4d5fe, 0.12em 0 #b4d5fe, -0.12em 0 #b4d5fe, 0.15em 0 #b4d5fe, -0.15em 0 #b4d5fe;
background: #b4d5fe;
}

◊; Core styles for commonly used elements.
p, li, blockquote {line-height: 1.5;}
ul {list-style: circle outside;}
li {padding-left: 1em;}

blockquote { border-left: 10px solid ◊|blockquote-border-color|; padding-left: 1em; margin-right: 3em; }
.code { font-family: Consolas, "Liberation Mono", Menlo, Courier, monospace; }
span.code {font-size: 0.8rem;}
blockquote.code {
border-left: 10px solid ◊|blockquote-border-color|;
margin-left: 0;
margin-right: 0;
overflow-x: auto;
font-size: 0.7rem;}

◊; Styles for sidenotes and margin-notes. Taken from Tufte-css.
.sidenote, .margin-note {
text-align: left;
color: ◊|light-text-color|;
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
color: ◊|dark-text-color|;
font-size: 0.7rem;
line-height: 1.3;
}

.sidenote.expanded, .margin-note.expanded {
-webkit-line-clamp: 300;
}

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

.sidenote-comma {
position: relative;
font-size: 0.7rem;
top: -0.5rem;
left: 0.1rem;
}

.sidenote:before { content: counter(sidenote-counter) ". "; top: 0rem; }

input.margin-toggle { display: none; }
input.margin-expand { display: none; }
label.sidenote-number { display: inline; }
label.margin-toggle:not(.sidenote-number) { display: none; color: #8A0707;}

.margin-expand:checked + .margin-note,
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
html { font-size: 13px; }
body { margin-top: 0; margin-bottom: 0; margin-left: 10%; margin-right: 10%; }
body.print-with-right-margin { margin-top: 0; margin-bottom: 0; margin-left: 0; margin-right: 25.0%; }
@page {
margin-top: 1.5in;
margin-bottom: 1.5in;
margin-left: 1.5in;
margin-right: 1.5in;
}
.margin-note {
text-align: left;
color: ◊|light-text-color|;
float: right;
clear: right;
margin-right: -30%;
width: 25%;
margin-top: 0;
margin-bottom: 0.5rem;
font-size: 0.7rem;
line-height: 1.3;
vertical-align: baseline;
position: relative;
-webkit-line-clamp: 3000;
}
}

◊; On small screens, do things a bit differently.
@media screen and (max-width:◊|small-screen-trigger|px){
html { font-size:◊|font-size-on-small-screens|px; }

body {
margin-top: 1em;
margin-left: 1em;
margin-right: 1em;
max-width: initial;
}

img {
max-width: 100%;
margin-left: auto;
margin-right: auto;
}

div.thumbnail { background-color: white; }
img.thumbnail { float: none; display: block; margin-bottom: 1em; max-height: 225px; width: auto; margin-left: auto; margin-right: auto; }
div.clear { clear: both; }

blockquote {
margin-right: 2em;
padding-left: 1em;
margin-left: 1em;
}

label.margin-toggle:not(.sidenote-number) { display: inline; }
.margin-note, .sidenote { display: none; }
.margin-toggle:checked ~ .sidenote,
.margin-toggle:checked ~ .margin-note {
color: ◊|dark-text-color|;
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

li { margin-left: 1em; padding-left: 1em; }
ul { margin-left: 0; padding-left: 0; }
}