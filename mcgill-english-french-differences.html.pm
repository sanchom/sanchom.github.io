#lang pollen

◊define-meta[page-title]{English-French differences in the McGill Guide}
◊define-meta[short-title]{McGill Guide: English/French}
◊define-meta[original-date]{2019-09-01}
◊define-meta[snippet]{Highlighting the most salient differences between French and English McGill style.}

◊(define (mcgill-example . content) `(blockquote [[class "mcgill-example"]] ,@content))

◊declare-work[#:id "mcgill" #:type "book" #:title "Canadian Guide to
Uniform Legal Citation" #:edition "9th" #:year "2018" #:publisher
"Thomson Reuters" #:publisher-location "Toronto" #:short-form "*McGill
Guide*"]

◊declare-work[#:id "lluelles" #:author "Didier Lluelles"
#:author2-given "Josée" #:author2-family "Ringuette" #:type "book"
#:title "Guide des références pour la rédaction juridique" #:edition
"9th" #:year "2017" #:publisher "Themis" #:publisher-location
"Montréal" #:short-form "Lluelles Guide"]

◊declare-work[#:id "qcca" #:type "magazine/news" #:title "Précis de la
référence juridique de la Cour d’appel du Québec" #:date "31 July
2017" #:url
"https://courdappelduquebec.ca/en/general-information/the-court-of-appeal-of-quebec-guide-to-legal-citation/"]

◊declare-work[#:id "btb" #:type "magazine/news" #:title "French
Typographical Rules" #:author "Translation Bureau" #:publication
"Public Works and Government Services Canada" #:url
"https://www.btb.termiumplus.gc.ca/tcdnstyl-chap?lang=eng&lettr=chapsect17&info0=17"
#:date "2019"]

◊title{English-French differences in the ◊em{McGill Guide}}
◊subtitle{Sancho McCann}

I'm writing this blog post for English-primary editors who want to get
up to speed with the French citation style presented in the ◊em{McGill
Guide}.◊note{◊cite["mcgill"] The ◊em{McGill Guide} says: "Use the
rules from the English section when writing in English, even if the
source being referred to is in another language. Use the French rules
only when writing in French." ◊cite["mcgill" #:pinpoint "s E-1.1"] Or
in French: "Utiliser les règles de la parties français pour écrire en
français, et ce même lorsque la source originale est dans une autre
langue."} Please leave a comment below for other differences you've
encountered! 

There are two other citation manuals that Québécois authors may be
familiar with: the ◊em{Lluelles Guide}◊note-cite["lluelles"] and the
◊em{Court of Appeal of Quebec Guide to Legal
Citation}.◊note-cite["qcca"] These are good places to look if you need
help interpreting part of a citation that doesn't adhere to the
◊em{McGill Guide}.

◊heading{Main differences}

In this section, I'll list the main differences that I encounter when
editing French articles. Most of these are differences from the
English version of the ◊em{McGill Guide}, but I also point out some of
the ways that the French ◊em{McGill} differs from common expectations
of Québécois authors because of other style guides.

In French, use "et" not "&" to separate the final two authors in a
list of authors.◊note{Interesting that "&" is actually [an evolution
from early "et" ligatures](https://en.wikipedia.org/wiki/Ampersand).}

Place the footnote marker ◊em{before} the punctuation at the end of a
sentence (but after any closing quotation).

◊mcgill-example{
« Le numéro de la note de bas de page se place avant la ponctuation »◊b{◊red{◊sup{◊small{1}}}}.
}

When pinpointing to a particular page, English ◊em{McGill} style does
not mention the word "page" or "p" or "pp." French ◊em{McGill} style
does.

◊mcgill-example{
◊em{Ibid} ◊b{◊red{à la p}} 3.

Voir ◊em{ibid} ◊b{◊red{aux pp}} 3--5.
}

The ◊em{McGill Guide} prescribes using a comma to separate
non-consecutive pinpoints. This is consistent with English ◊em{McGill}
style but is different from what many Québécois authors might be used
to because the QCCA style guide prescribes "et."◊note-see["qcca"
#:pinpoint "10"]

Sections of statutes and codes are called ◊em{articles}, and pinpoints
use the abbreviation, "art" or "arts."

Works from Québec will often cite codes listed at Section 2.3 of the
◊em{McGill Guide} (for example, the ◊em{Code civil du Québec}
(CcQ)). These do not take a full citation. Use the unitalicized,
abbreviated form upon first reference. The pinpoint comes ahead of the
abbreviation:

◊mcgill-example{
Art 523 ◊b{◊red{CcQ}}.
}

The ◊em{McGill Guide} does not include ◊em{Code criminel} (Ccr) as one
of the codes to be shortened like this. This doesn't differ from
English ◊em{McGill}, but differs from the QCCA style
guide.◊note-see["qcca" #:pinpoint "18"]

A common pinpoint element in civil codes, not actually mentioned in
the ◊em{McGill Guide}, is the ◊em{alinéa}.◊note{This is from the latin
for "off the line" and is an alternate name for the paragraph mark
(¶).}  Many sections (articles) in the civil codes have multiple,
unnumbered paragraphs. These are ◊em{alinéas}. They are cited using
the abbreviation "al":

◊mcgill-example{
Art 523 ◊b{◊red{al 2}} CcQ.
}

The format of a book's publication information differs. In
English ◊em{McGill} style, the format is:

◊mcgill-example{
(Toronto: Thomson Reuters, 2011).
}

In French ◊em{McGill} style, the format is:

◊mcgill-example{
Toronto, Thomson Reuters, 2011.
}

Editions in French ◊em{McGill} style are super-scripted:

◊mcgill-example{
Auteur, ◊em{titre du livre}, 2◊b{◊red{◊sup{◊small{e}}}} éd, lieu d'édition, maison d'édition, année d'édition.
}

The choice of a ◊em{◊b{◊red{c}}} or a ◊em{◊b{◊red{v}}} in a style of
cause depends on whether the decision was rendered in French or
English.◊note-see["mcgill" #:pinpoint "ss E-3.3, F-3.3"] French
decisions take ◊em{◊b{◊red{c}}}; English decisions take
◊em{◊b{◊red{v}}}. Bilingual decisions take ◊em{◊b{◊red{c}}} when
mentioned in a French work.

◊heading{French typographical conventions}

While these are not citation-style differences, it's important to
understand French typographical conventions so you don't anglicize the
French text. The Canadian Translation Bureau publishes a helpful
primer on the basic rules of French typography.◊note-see["btb"]

Quotations look like « this ». French uses marks called
◊em{guillemets}. The guillemet takes a space on each side, separating
these marks from the word itself. Sentence-ending punctuation comes
after the closing guillemet. If you use a plain space between the word
and the guillemet, Microsoft Word might decide to split these elements
across two lines. To avoid that, use a [non-breaking
space](https://en.wikipedia.org/wiki/Non-breaking_space)
(◊tt{ctrl-shift-space}, in Microsoft Word).

Em-dashes and colons also take a space on each side.

◊mcgill-example{
◊em{Des obligations : contrat et responsabilité}
}

◊mcgill-example{
◊em{Droit de la famille ◊no-formatting{—} 09358}, 2009 QCCA 332.
}

Capitalization conventions differ in French.◊note-see["btb"
#:pinpoint "s 17.04"] This results in capitalizations like, "Code
criminel", "Charte québecoise", and "Charte canadienne."

If the title of the book or quotation is English, use English
typographical conventions within that English text.
