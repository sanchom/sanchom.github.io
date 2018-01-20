#lang pollen
◊(require racket/list)

◊(define width-for-max-font 920)
◊(define size-steps 6)
◊(define max-font-size 18)
◊(define font-size-on-small-screens 16)
◊(define small-screen-trigger (- width-for-max-font (* (- size-steps 1) 40)))

◊(define link-color "#3f75a2")

@media all {html {font-size: ◊|max-font-size|px;}}
◊(apply string-append (map (lambda (x)
        (format "@media all and (max-width:~apx){html {font-size:~apx;}}\n" (- width-for-max-font (* x 40)) (- max-font-size x)))
      (range 0 size-steps)))
@media all and (max-width:◊|small-screen-trigger|px){html {font-size:◊|font-size-on-small-screens|px;}}

body {font-family: "Source Serif Pro", serif; margin-top: 5em; margin-bottom: 5em; margin-left: 15%; margin-right: 16.0rem; max-width: 45em;}
@media all and (max-width:◊|small-screen-trigger|px){body {margin-top: 1em; margin-left: 1em; margin-right: 1em; max-width: initial;}}

h1 {margin-top: 1.5em; border-top: solid 0.5px; padding-top: 0.5em;}
h1, h2, h3, h4, h5, h6 {font-family: "Josefin Sans", sans-serif; clear: left;}
h1 {font-size: 1.6em;}
h2 {font-size: 1.5em;}
h3 {font-size: 1.4em;}
h4 {font-size: 1.3em;}
h5 {font-size: 1.2em;}
h6 {font-size: 1.1em;}

a:link {text-decoration: none; color: ◊|link-color|;}
a:visited {text-decoration: none; color: ◊|link-color|;}
a:hover {text-decoration: underline; color: ◊|link-color|;}

ul {list-style: circle outside;}

p, li, blockquote {line-height: 1.5;}
li {padding-left: 1em;}

img.little-logo { float: left; margin-right: 1em; margin-bottom: 1em; }
img.thumbnail { float: left; margin-right: 1em; margin-bottom: 1em; margin-top: 0.5em;}

.external-link-logos {
  display:flex;
  justify-content:center;
}

div.aside, div.aside p, div.aside a, div.aside li, div.aside div {
font-family: Raleway;
}

◊; Tighter lists within an aside
div.aside li {
padding-left: 0.5em;
}
div.aside ul {
padding-left: 1em;
}

blockquote {
    border-left: 10px solid gainsboro;
    padding-left: 1em;
    margin-right: 5em;
}

div.aside {
    border-left: 10px solid gainsboro;
    border-bottom: 0.5px solid gainsboro;
    border-top: 0.5px solid gainsboro;
    border-right: 0.5px solid gainsboro;
    background-color: whitesmoke;
    padding-left: 1em;
    padding-top: 0.5em;
    padding-bottom: 0.5em;
    padding-right: 1em;
    font-size: 0.75rem;
    margin: 0 -14.0rem 1rem 0;
    float: right;
    clear: right;
    width: 10rem;
}

@media all and (max-width:◊|small-screen-trigger|px){
img {
    max-width: 95%;
    margin-left: auto;
    margin-right: auto;
}

blockquote {
    margin-right: 2em;
    padding-left: 1em;
    margin-left: 1em;
}

div.aside {
    margin: 1rem auto 0 auto;
    float: none;
    clear: none;
    width: 30rem;
    max-width: 80%;
}
}