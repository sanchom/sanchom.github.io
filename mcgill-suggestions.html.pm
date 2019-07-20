#lang pollen

◊define-meta[page-title]{McGill Guide 9.1: Suggestions for improvement}
◊define-meta[short-title]{McGill Guide 9.1}
◊define-meta[original-date]{2019-07-18}
◊define-meta[snippet]{Some suggested improvements for one of Canada's legal citation guides}

◊(define (mcgill-example . content) `(blockquote [[class "mcgill-example"]] ,@content))

◊declare-work[#:id "mcgill" #:type "book" #:title "Canadian Guide to
Uniform Legal Citation" #:edition "9th" #:year "2018" #:publisher
"Thomson Reuters" #:publisher-location "Toronto" #:short-form "McGill
Guide"]

◊declare-work[#:id "mirando" #:type "magazine/news" #:title "Legal
Citation: Beyond the McGill Guide" #:author "Louis Mirando" #:url
"http://www.slaw.ca/2014/12/08/legal-citation-beyond-the-mcgill-guide/"
#:publication "Slaw" #:date "8 December 2014"]

◊declare-work[#:id "inside-job" #:type "article" #:title "An Inside
Job: Engaging with Indigenous Legal Traditions through Stories"
#:author "Val Napoleon" #:author2-given "Hadley" #:author2-family
"Friedland" #:year "2016" #:journal "McGill LJ" #:volume "61" #:issue
"4" #:first-page "725" #:url "id.erudit.org/iderudit/1038487ar"]

◊declare-work[#:id "cmos" #:type "book" #:short-form "CMOS" #:title
"The Chicago Manual of Style" #:edition "17th" #:publisher "University
of Chicago Press" #:publisher-location "Chicago" #:year "2017"]

◊title{McGill Guide 9.1: Suggestions for improvement}
◊subtitle{Sancho McCann}

I've said that [citation layout is something that can and should be
automated](automating-citations.html). But as long as we are doing
this work ourselves, it is helpful to have clear rules. Clear rules
will also make it easier to automate this work. There are several
rules and examples in the ◊em{McGill Guide}◊note{◊cite["mcgill"] This
is one of Canada's legal citation guides. It's widely, but not
universally used, and it has been criticized as exclusionary. See
◊cite["mirando"]} that could use some extra clarity or correction.

◊fig[#:src "assets/mcgill-guide.jpg" #:width "500px"]{Very helpful,
but can be even better.}

◊heading{Extra clarity needed}

Here are some citation rules that I've had difficulty automating
because of ambiguity in the ◊em{McGill Guide}. I'll describe these and
suggest some ways to make these rules clearer.

◊sub-heading{"cited to"}

Section 3.6.2 of the ◊em{McGill Guide} says:

◊q{Cite the pinpoint reference to the ◊b{most official reporter,
mentioned first} ◊ellipsis If subsequently citing to pinpoints, add
◊b{◊red{cited to}} after the short title, followed by the abbreviation
in the reporter. No ◊b{◊red{cited to}} is necessary when not
subsequently referring to pinpoints or if the first citation contains
a pinpoint.}

They give this example:

◊mcgill-example{
◊em{Delgamuukw v British Columbia}, 79 DLR (4th) 185, [1991] 3 WWR 97 (BCSC) [◊em{Delgamuukw} ◊b{◊red{cited to DLR}}].
}

First, this appears redundant. If the pinpoints must always refer to
the "most official reporter, mentioned first", then there is no need
for the "cited to" annotation alongside the short form title.

Second, the example in Section 1.3.7 presents another difficulty
(emphasis changed by me):

◊mcgill-example{
◊sup{◊small{1}} ◊em{Roncarelli v Duplessis}, [1959] SCR 121, 16 DLR (2d) 689, Rand J (discretionary decisions must be based on
"considerations pertinent to the object of the administration" at 140); ◊em{Oakwood Development Ltd v St François Xavier (Municipality)},
[1985] 2 SCR 164, 20 DLR (4th) 641, Wilson J [◊em{Oakwood} ◊b{◊red{cited to SCR}}] ("[the] failure of an administrative decision-maker
to take into account a highly relevant consideration is just as erroneous as the improper importation of an extraneous consideration" at 174).}

Why does ◊em{Oakwood} take a ◊b{◊red{cited to}}, but ◊em{Roncarelli}
does not? ◊em{Roncarelli} isn't given a short-form, so possibly is
never cited again in this hypothetical article. But maybe later
references just use the full style of cause since it's short enough,
in which case a short-form would not need to be introduced here. But
both citations contain a pinpoint, although moved into the
parenthetical rather than placed alongside the main citation. If we
use ◊b{◊red{cited to}} to provide a reminder about which reporter's
page numbers are being used, surely both of these citations would
require it equally.

My suggestion for the next revision of the ◊em{McGill Guide} is to remove
the ◊b{◊red{cited to}} element because the main citation---the
first-listed reporter---is always the one cited to.

◊sub-heading{Form of citation when full style of cause is in the text}

Did you know that when the full style of cause is in the text, you are
not to include it in the citation? This little-known rule is presented
in Section 3.3: "If the style of cause is indicated in the text, do
not repeat it in the footnote."

The only example of this is found in Section 1.4, as it is also an
exception to the rule that every citation should have an introductory
signal:

◊mcgill-example{
In ◊em{R v Stinchcombe}◊sup{◊small{1}}, the court held that◊ellipsis

◊sup{◊small{1}} [1991] 3 SCR 326 at 333, 1991 CanLII 45 (SCC).
}

(The ◊em{McGill Guide} also has two errors in this example: the note
number should come after the comma, and there is no need for the
jurisdiction/court information "(SCC)" because it is evident from the
title of the reporter "SCR". The example just prior to this one in the
◊em{McGill Guide} got that right.)

This rule would be more clear and more widely known if that example
were shown alongside the actual rule in Section 3.3. It should also be
made clear that if the style of cause in the text is not the full
style of cause of the actual case being cited (e.g. a more widely
known style of cause from a lower court, like ◊em{Eric v Lola}) then
the full style of cause needs to be included in the citation:

◊mcgill-example{
In ◊em{Eric v Lola},◊sup{◊small{1}} the court held that◊ellipsis

◊sup{◊small{1}} ◊em{Quebec (AG) v A}, 2013 SCC 5 [◊em{Eric v Lola}].
}

◊sub-heading{Combining citations, parenthetical information, pinpoints, and textual content in a footnote}

The ◊em{McGill Guide} doesn't give clear guidance on how to do this. The
only examples they give are of parenthetical information within a
citation at Section 1.3.7 (already shown above, but repeated here with
original emphasis):

◊mcgill-example{

◊sup{◊small{1}} ◊em{Roncarelli v Duplessis}, [1959] SCR 121, 16 DLR
(2d) 689, Rand J ◊b{◊red{(discretionary decisions must be based on
"considerations pertinent to the object of the administration" at
140)}}; ◊em{Oakwood Development Ltd v St François Xavier
(Municipality)}, [1985] 2 SCR 164, 20 DLR (4th) 641, Wilson J
[◊em{Oakwood} cited to SCR] ◊b{◊red{("[the] failure of an
administrative decision-maker to take into account a highly relevant
consideration is just as erroneous as the improper importation of an
extraneous consideration" at 174)}}.

}

The ◊em{McGill Guide} doesn't say how to subsequently include a
parenthetical that quotes from Justice Taschereau's dissent in
◊em{Roncarelli}.◊note{By the way, the [old Supreme Court
Reports](https://scc-csc.lexum.com/scc-csc/scc-csc/en/2751/1/document.do)
look so nice. Every page tells you whose words you're reading with a
cute little margin note. They use a didone/modern typeface. Footnotes
are centred. Line spacing seems perfect. And blockquotes are clearly
distinguished with a smaller size.}

Should that look like this?

◊mcgill-example{

◊sup{◊small{2}} ◊em{Roncarelli v Duplessis}, ◊em{supra} note 1
("[l]'absence de cet avis interdit aux tribunaux de prononcer aucune
condamnation" at 140◊b{◊red{, Taschereau J, dissenting}}).

}

Or like this?

◊mcgill-example{

◊sup{◊small{2}} ◊em{Roncarelli v Duplessis}, ◊em{supra} note 1,
◊b{◊red{Taschereau J, dissenting}} ("[l]'absence de cet avis interdit
aux tribunaux de prononcer aucune condamnation" at 140).

}

The ◊em{McGill Guide} clearly limits parenthetical information within
a citation to a "brief description or quotation of not more than one
sentence." Often though, footnotes contain more information than would
make sense in a parenthetical. There are few alternatives for how to
present this.◊note{The following examples all come from
◊cite["inside-job"]}

You could just cite within the footnote as if you were writing body
text with in-text citations (that is, set the citation off with a set
of parentheses):

◊mcgill-example{

◊sup{◊small{28}} This method explains and expands on John Borrows’
innovative work, in which he approaches Indigenous stories as
normative resources, analyzing a single Anishinabek story by retelling
it in a case brief form ◊b{◊red{(see John Borrows, ◊em{Recovering
Canada: The Resurgence of Indigenous Law} (Toronto: University of
Toronto Press, 2002) at 16–20)}}.

}

There is also the extended introductory signal, which in this case
even separates the author name from the article title:

◊mcgill-example{

◊sup{◊small{50}} ◊b{◊red{See John Borrows’ rich discussion of some of
this internal architecture in his article from this special issue}},
“Heroes, Tricksters, Monsters, and Caretakers: Indigenous Law and
Legal Education” (2016) 61:4 McGill LJ 795.

}

There is the cite-then-explain approach:

◊mcgill-example{

◊sup{◊small{31}} See generally Bruce Granville Miller, ◊em{Oral
History on Trial: Recognizing Aboriginal Narratives in the Courts}
(Vancouver: UBC Press, 2011). ◊b{◊red{Miller examined over thirty
cases and concluded that◊ellipsis }}

}

The ◊em{McGill Guide} doesn't advise which of these approaches to take. The
◊em{Chicago Manual of Style} suggests, "When a note contains not only
the source of a fact or quotation in the text but related substantive
material as well, the source comes first. A period usually separates
the citation from the commentary." And, "When a note includes a
quotation, the source normally follows the terminal punctuation of the
quotation. The entire source need not be put in
parentheses."◊note-cite["cmos" #:pinpoint "sections 14.37, 14.38"]

My suggestion would be for the ◊em{McGill Guide} to explicitly recognize
that variation between these approaches is okay, and that the choice
should depend on how the footnote's content relates to the
accompanying body text. Sometimes, it will make sense to place the
citation first and then some clarifying remarks. Sometimes, the
purpose of the footnote is a clarification which itself happens to
need a citation.

For editors or journals desiring more uniformity, they could adopt the
recommendations of the ◊em{Chicago Manual of Style} on this point.

◊heading{Corrections}

There are also a few small errors that can easily be fixed:

◊itemize{
French Section 1.4.3 refers to note 59, which doesn't exist. The corresponding example in the English section has an additional footnote which is missing from the French example.

French Section 3.4 presents an example of what not to do. Perhaps that is intentional, but it would be the only such example in the ◊em{McGill Guide} and the corresponding example in the English section shows the correct citation.
}

◊heading{The big picture}

None of this REALLY matters. This isn't what law or writing is
about. But consistency and a degree of uniformity within a
publication's citations can be important to editors and readers. So,
we ◊em{will} spend time trying to get these things right. I think the
small changes suggested above could save writers and editors many
hours that would be better spent on making our writing clearer or
checking that our sources support our claims.
