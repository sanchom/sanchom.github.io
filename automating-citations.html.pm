#lang pollen

◊define-meta[page-title]{Automating citations}
◊define-meta[original-date]{2019-05-05}
◊define-meta[snippet]{No one should be spending time laying out citations. Here's a description of some legal tech (or just writing tech) that's made this easier for me.}

◊title{Automating citations}
◊subtitle{Sancho McCann}

I wrote the code that controls how this website appears to you. This
is of course built on top of the work of others, like the ◊a[#:href
"https://docs.racket-lang.org/pollen/"]{pollen publishing system}. I
want to share how I've customized and automated the citation system
for this site. I know that footnotes are not common nor necessary in a
blog format and I almost always include a link that you can just click
to get to a source. But I do write some material that may be improved,
at least for some of my audience, by including traditional
citations. And if I don't have to do much extra work to provide these,
why not?

I also envision blogs as a medium for academic exchange of ideas. Not
everything has to be a paper in order to get feedback from peers. But
if I'm ever going to use this platform for that, I don't want to be
held back by citations.

◊heading{First attempt}

I presented my first attempt at a footnote system ◊a[#:href
"pollen-footnotes.html"]{here}. That was mostly about getting their
mere appearance as footnotes correct (that they actually show up, with
the right numbers, either alongside their related text or at the
bottom of the page with link-backs, etc.). I still had to lay them out
in my source text.◊note{Throughout this, I refer to "source text" or
just "source". That's the text that I write on my computer. Pollen,
combined with my customizations, turns that source text into what
you're seeing here. The source text is a mix of plain text and helper
tags.}

◊codeblock{

I'd have to write a footnote like this.◊lozenge[]note{See Angela
Fernandez, "◊lozenge[]a[#:href
"https://www.jstor.org/stable/27641649"]{The Lost Record of Pierson
v. Post, the Famous Fox Case}," ◊lozenge[]em{Law and History Review}
27, no. 1 (2009): 149–78.}

}

That would get turned into a footnote like this.◊note{See Angela
Fernandez, "◊a[#:href "https://www.jstor.org/stable/27641649"]{The
Lost Record of Pierson v. Post, the Famous Fox Case}," ◊em{Law and
History Review} 27, no. 1 (2009): 149–78.} (I was using the Chicago
Manual of Style at the time.) Note that in the source, I had to
explicitly create the link (the ◊tt{◊lozenge[]a[#:href ...]}) and
specify which text needed to be italicized (using ◊tt{◊lozenge[]em}).

This was inadequate in three ways:

◊itemize{

When citing that same work a second time, I'd have to repeat all of
that again.

A lot of what I was typing was instructions for layout. This is
error-prone and I don't want to think about this while writing.

If I wanted to change from Chicago Manual of Style to another citation
style (which I eventually did), I'd have to manually edit every single
one of my citations.

}

◊heading{Second attempt}

My second approach dealt with the last two issues by automating the
layout of an individual citation. I used some citation templates that
gathered the citation data and automatically formatted the citation
according to the Chicago Manual of Style.

◊codeblock{

That let me write a citation like
this.◊lozenge[]note{◊lozenge[]cite-article[#:title "The Lost Record of
Pierson v. Post, the Famous Fox Case" #:author "Angela Fernandez"
#:year "2009" #:journal "Law and History Review" #:volume "27" #:issue
"1" #:pages "149--78" #:url "https://www.jstor.org/stable/27641649"]}

}

This called some code that automatically laid out the citation
according to the style guide. That auto-layout code (which would be
called whenever I wrote ◊tt{◊lozenge[]cite-article[...]} looked like
this:

◊codeblock{

(define (cite-article #:author [author #f] #:title [title #f] #:journal [journal #f] #:year [year #f] #:volume [volume #f] #:issue [issue #f] #:pages [pages #f] #:url [url #f])
  ; Chicago Manual of Style, bibliography form.
`(span [[class "bibliography-entry"]] ,author ", “" ,(if url `(a [[href ,url]] ,title) title) ",” " (em ,journal) " " ,volume ,(when/splice issue ", no. " issue) " (" ,year "): " ,pages "."))

}

This isn't pretty code, but you can see that it knows to list the
author first, then list the title in quotes, optionally linking to a
URL if one was provided, etc. This automation removed a common source
of error. And if I wanted to update the citation style, I'd just have
to change what my ◊tt{cite-article} function did, in one place, and
all of my citations across the site would be updated.

There was still one large source of repetition and error: citing the
same work multiple times in an article. I'd either need to
copy-and-paste that citation template or manually write citation
back-references like ◊em{"ibid"} and ◊em{"supra"}.

◊heading{Third attempt}

My third attempt takes an approach similar to that of ◊a[#:href
"https://en.wikipedia.org/wiki/LaTeX"]{LaTex} and my ◊a[#:href
"https://github.com/sanchom/allard-writing-tools"]{factum/paper
authoring tool}.

First, I separate the declaration of a work from its display:

◊codeblock{◊lozenge[]declare-work[#:type "legal-case" #:id "secession"
#:title "Reference re Secession of Quebec"
#:citation "[1998] 2 SCR 217"
#:url "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/1643/index.do"
#:short-form "Secession reference"]}

◊declare-work[#:type "legal-case" #:title "Reference re Secession of
Quebec" #:citation "[1998] 2 SCR 217" #:url
"https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/1643/index.do" #:id
"secession" #:short-form "*Secession Reference*"]

◊tt{◊lozenge[]declare-work[...]} doesn't do anything except tell the
rendering system about the work. In order to actually display that
citation to you, I have to call ◊tt{◊lozenge[]cite["secession"]}.

So, if I write this:

◊codeblock{

You see a note that cites the secession reference.◊lozenge[]cite["secession"]

}

You see a note that cites the secession reference.◊cite["secession"]

And if I write this:

◊codeblock{

You see a second citation to the secession reference, this one with a
pinpoint.◊lozenge[]cite["secession" #:pinpoint "paragraph 49"]

}

You see a second citation to the secession reference, this one with a
pinpoint.◊cite["secession" #:pinpoint "paragraph 49"] It isn't a
mistake that the source calls for a pinpoint to "paragraph 49" but
what you're seeing in the footnote is "para 49". The system knows that
paragraphs are properly pinpointed using "para" in McGill style.

If there is an intervening footnote,◊note{Intervening footnote.} then
the subsequent citation to the secession reference will use the
short-form that was first declared in ◊tt{◊lozenge[]declare-work} and
it will also refer back to the initial footnote in which it was first
used.◊cite["secession"]

◊heading{No one should be spending time laying out citations}

This is one of the biggest wastes of time in law school. It is
certainly important to be able to find the source a citation refers
to, to know what needs to be cited, to understand what works or cases
are authoritative for particular propositions, etc. But we gain
nothing by remembering that you say "at 419" and not "at page 419" or
that you put a comma after the title of a journal article but not
after the title of a magazine or news article. We spend hours on each
paper checking and correcting citations for adherence to the McGill
Guide. And if you move one reference, you have to make sure all the
back-references are updated. This is all work that a computer is
perfect for.

But systems like LaTeX which are adequate for computer science
citations are inadequate for citation layout for legal writing. Even
confining the task to just paper-writing, a footnote in a law paper
can contain multiple citations and related textual
information.◊note{See ◊declare-work[#:type "magazine/news" #:url
"https://tex.stackexchange.com/questions/71306/bluebook-support-in-latex"
#:title "Bluebook support in Latex?" #:publication "Tex StackExchange"
#:date "12 September 2012"] This question and answer highlight the
complexity of implementing a legal citation style in Latex/BibTex.}
And factums and memoranda have totally different layout rules than
papers. The McGill Guide's factum style is unlike anything in any
other field of writing.

I've used LaTex for over a decade and now I've written two
footnote/citation automation systems: my factum/paper authoring tool,
and this website's rendering system. I think it would be possible to
get them both to a state where I never have to think about citation
layout again. I wrote a memorandum, two papers, and my moot factum
this year all using my factum/paper authoring tool. One barrier to
complete reliance on an automated system is collaborating with
others. Most (maybe all?) journals use Microsoft Word for submissions
and editing. So, after writing my journal paper using my own authoring
tool, I had to export it to Word in order to submit it to the journal,
and had to manually edit the citations in Word throughout the editing
process.

Another barrier is the complexity and unexpected variation in legal
citations. It just isn't possible to take care of every little edge
case. I know I just said that no one should spend ◊em{any} time on
this, but even a complete system will have to allow the author to
enter a customized citation, in a format that doesn't match any
pre-defined layout, without throwing off the rest of the citations
that are being managed automatically.

◊heading{Code}

These are works-in-progress, but take a look at them, use them or use
ideas from them, and let me know how they could be better:

◊itemize{

◊a[#:href "https://github.com/sanchom/allard-writing-tools"]{My
factum/paper authoring tool}

◊a[#:href
"https://github.com/sanchom/sanchom.github.io/blob/master-source/pollen.rkt"]{The
code that renders this website}

}

Related projects:

◊itemize{

◊a[#:href "https://docs.racket-lang.org/pollen/"]{Pollen, the system that my code relies on}

◊a[#:href "https://en.wikipedia.org/wiki/BibTeX"]{Wikipedia: BibTeX}

◊a[#:href "https://pandoc.org/"]{Pandoc} and ◊a[#:href "https://github.com/jgm/pandoc-citeproc"]{pandoc-citeproc}

}
