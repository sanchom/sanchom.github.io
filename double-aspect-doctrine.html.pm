#lang pollen

◊define-meta[page-title]{The double-aspect doctrine}
◊define-meta[original-date]{2018-12-26}
◊define-meta[edited-date]{2019-02-17}
◊define-meta[snippet]{Teasing apart the ways in which the double-aspect doctrine is used.}
◊use-footnotes[]

◊declare-work[#:type "legal-case" #:title "Reference re Secession of
Quebec" #:citation "[1998] 2 SCR 217" #:url
"https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/1643/index.do" #:id
"secession" #:short-form "Secession reference"]

◊declare-work[#:type "legal-case" #:url
"https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/234/index.do"
#:title "Ontario (Attorney General) v OPSEU" #:citation "[1987] 2 SCR
2" #:id "OPSEU" #:short-form "Ontario v OPSEU"]

◊declare-work[#:type "legal-case" #:title "Multiple Access Ltd v
McCutcheon" #:citation "[1982] 2 SCR 161" #:url
"https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/2450/index.do" #:id
"Multiple Access"]

◊declare-work[#:type "statute" #:title "Canada Corporations Act"
#:volume "RSC" #:year "1970" #:chapter "C-32" #:id "CCA"]

◊declare-work[#:type "statute" #:title "The Securities Act" #:volume
"RSO" #:year "1970" #:chapter "426" #:id "OSA"]

◊declare-work[#:type "legal-case" #:title "Hodge v The Queen"
#:citation "[1883] UKPC 59" #:url
"http://www.bailii.org/uk/cases/UKPC/1883/1883_59.html" #:id "Hodge"]

◊declare-work[#:type "book" #:author-given "Patrick" #:author-family
"Macklem et al" #:title "Canadian Constitutional Law" #:publisher
"Emond" #:publisher-location "Toronto" #:year "2016" #:id "Macklem"]

◊declare-work[#:type "legal-case" #:title "Reference re Assisted Human
Reproduction Act" #:citation "2010 SCC 61" #:url
"https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7905/index.do" #:id
"Reproduction reference" #:short-form "Reproduction reference"]

◊declare-work[#:type "legal-case" #:title "Siemens v Manitoba
(Attorney General)" #:citation "2003 SCC 3" #:url
"https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/2033/index.do" #:id
"Siemens"]


◊title{The double-aspect doctrine}

◊fig[#:src "assets/pipelines-double-aspect.png" #:width "500px"]{The
double-aspect doctrine explains why the provincial and federal
government might both be able to make legislation relating to a
particular field. On April 26, 2018, the BC government asked the BC
Court of Appeal to decide (among other things) whether the province
has the power to make certain amendments to the to the Environmental
Management Act that would affect a proposed pipeline being built by
the federal government. See the ◊a[#:href
"https://news.gov.bc.ca/releases/2018PREM0019-000742"]{news release}.}

Federalism is a broad subcategory within Canadian constitutional
law. In this context, federalism refers to the division of law-making
power between our provincial and federal governments.

◊q{In a federal system of government such as ours, political power is
shared by two orders of government: the federal government on the one
hand, and the provinces on the other. Each is assigned respective
spheres of jurisdiction by the ◊em{Constitution Act, 1867}. The
federal structure of our country also facilitates democratic
participation by distributing power to the government thought to be
most suited to achieving the particular societal objective having
regard to this diversity.◊note-cite["secession" #:pinpoint "paras
55--60"]}

But, this division of power is not watertight. "The history of
Canadian constitutional law has been to allow for a fair amount of
interplay and indeed overlap between federal and provincial
powers."◊note-cite["OPSEU" #:pinpoint "para 27"] One way that this
overlap plays out is through the double-aspect doctrine.

◊em{Multiple Access Ltd v McCutcheon}◊note-cite["Multiple Access"],
the case generally used to introduce the double-aspect doctrine,
conflates two kinds of doubleness and this can lead to an overly
narrow conception of the doctrine. This article presents how I've come
to think of the double-aspect doctrine and one way of teasing apart
the ways in which the doctrine is used.

◊em{Multiple Access} concerned legislation enacted by the federal and
Ontario governments with provisions that overlapped significantly both
in their expression and in the people and conduct covered. Look at
section 100.4 of the ◊em{Canada Corporations Act}◊note-cite["CCA"
#:pinpoint "s 100.4(1)" #:parenthetical "\"Every insider of a company,
every person employed or retained by the company, the auditor of the
company and every associate of the insider and affiliate of the
insider within the meaning of subsection 125(3) who, in connection
with a transaction relating to the securities of the company, makes
use of any specific confidential information for his own benefit or
advantage that, if generally known, might reasonably be expected to
affect materially the value of the securities of the company, is
liable to compensate any person for any direct loss suffered by that
person as a result of the transaction, unless the information was
known or ought reasonably to have been known to that person at the
time of such transaction, and is also accountable to the company for
any direct benefit or advantage received or receivable by such
insider, employed or retained person, auditor, associate or affiliate,
as the case may be, as a result of the transaction\""] and section 113
of Ontario's ◊em{Securities Act}◊note-cite["OSA" #:pinpoint "s 113(1)"
#:parenthetical "\"Every insider of a corporation or associate or
affiliate of such insider, who, in connection with a transaction
relating to the capital securities of the corporation, makes use of
any specific confidential information for his own benefit or advantage
that, if generally known, might reasonably be expected to affect
materially the value of such securities, is liable to compensate any
person or company for any direct loss suffered by such person or
company as a result of such transaction, unless such information was
known or ought reasonably to have been known to such person or company
at the time of such transaction, and is also accountable to the
corporation for any direct benefit or advantage received or receivable
by such insider, associate or affiliate, as the case may be, as a
result of such transaction\""] to see how similar the provisions were:
they prohibited the exact same activities.

Multiple Access Ltd was a federally incorporated company, so was
within scope of the ◊em{Canada Corporations Act}. It also had its public
stock listed for trading on the Toronto Stock Exchange, bringing it
within the scope of Ontario's ◊em{Securities Act}.

Multiple Access's shareholders got Ontario's Securities Commission to
commence insider-trading enforcement against the company under the
Ontario act. Those shareholders could have equally sought
enforcement under the federal act, but the limitations period under the
federal act had expired. This was the only material difference between
the two acts as they applied to this company.

Multiple Access asked the court to declare that the federal act (with
the already-expired limitations period) was valid and thus render the
provincial law invalid. That second step (rendering the provincial law
invalid) would only follow if the validity of a federal provision
precludes the validity of a nearly-identical provincial law given the
division of powers set out in sections 91 and 92 of the
◊em{Constitution Act, 1867}. Multiple Access argued that a particular
provision could only be valid as either federal or provincial
legislation and that the court had to choose.

The court used the double-aspect doctrine to avoid this choice. It
explained the doctrine using material from an article by William
Lederman, "Classification of Laws and the British North America Act."
Lederman's article and ◊em{Multiple Access} contemplate one kind of
scenario in which the double-aspect doctrine can arise (when the court
is asked to choose which of the federal or provincial governments gets
to pass a particular law), but in this scenario, two kinds of
doubleness are conflated.

◊em{Multiple Access} and Lederman's article talk about the
double-aspect doctrine as if the federal and provincial governments
are playing tug-of-war over one particular law, asking, "who gets to
enact it?" Double-aspect enters when the answer is, "both of you."
This is the setting where we look for a 50/50 split between the
provincial and federal features of a law. If a law has a roughly 50/50
split between its provincial and federal features, then the court will
find both the provincial and federal provisions valid. This is what
happened in ◊em{Multiple Access}.

◊q{ ◊elide some overlapping inevitably remains. Where this occurs,
either one of two things has then been done. First, the nature of
◊u{the challenged law} relevant to a provincial class of powers has
been completely ignored as only an "incidental affectation" of the
provincial sphere, and ◊u{the law} concerned has been classed only by
that feature of it relevant to a federal class of laws. Thus, in spite
of the logical overlap the decision is made that only the federal
Parliament has power to enact ◊u{the challenged law}. Obviously this
decision involves a judgement that the provincial feature of ◊u{the
law} is quite unimportant relative to its federal feature. On the
other hand if the federal feature be deemed quite unimportant relative
to the provincial feature, then the converse decision would be
made. ◊elide

But, if the contrast between the relative importance of the two
features is not so sharp ◊elide the decision is made that ◊u{the
challenged rule} could be enacted by either the federal Parliament or
a provincial legislature. [emphasis added]
}

However, the double-aspect doctrine is not so narrow: it is used even
when duplication is not an issue. In 1883, the Privy Council
characterized it broadly: "subjects which in one aspect and for one
purpose fall within section 92, may in another aspect and for another
purpose fall within section 91."◊note-cite["Hodge"] Some notes in
◊em{Canadian Constitutional Law} try to explain this, but it's easy to
miss.◊note-cite["Macklem" #:pinpoint "233"] In its broadest
conception, the double-aspect doctrine explains any scenario where the
courts allow legislation from our two levels of government to touch a
particular field. The double-aspect doctrine is not reserved for cases
where the two levels of government play tug-of-war over a provision;
it is also at play when they play tug-of-war over a field, through
◊em{different provisions}, through ◊em{different} law.

"In most cases, application of the doctrine simply entails the court
evidencing a willingness to apply the pith and substance doctrine
flexibly, and to characterize similar federal and provincial
enactments in such a manner as to permit the court to uphold both
enactments as valid."◊note-cite["Macklem" #:pinpoint "233"]

Here are some more recent statements that demonstrate the breadth of
the doctrine:

◊q{ Activities, acts or conduct can sometimes be viewed from different
normative perspectives, one relating to a federal power and the other
to a provincial power. Where this is the case, the double aspect
doctrine is engaged.◊note-cite["Reproduction reference" #:pinpoint
"para 185"]}

◊q{ "Double occupancy" of a field of endeavour, such as health, is a
permanent feature of the Canadian constitutional order. It leads to a
standard "double aspect" analysis under which both aspects subsist
side by side.◊note-cite["Reproduction reference" #:pinpoint "para
67"]}

◊q{ [G]aming is a matter that falls within the "double aspect"
doctrine.  Accordingly, gaming can be subject to legislation by both
the federal and provincial governments.◊note-cite["Siemens" #:pinpoint
"para 22"]}
