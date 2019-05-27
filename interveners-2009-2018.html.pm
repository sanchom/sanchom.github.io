#lang pollen

◊define-meta[page-title]{Interveners at the Supreme Court of Canada: Revisited (2009--2018)}
◊define-meta[short-title]{Interveners revisited}
◊define-meta[snippet]{A dataset and analysis of 10 years of interventions at the Supreme Court of Canada.}
◊define-meta[original-date]{2019-05-16}
◊define-meta[edited-date]{2019-05-22}


◊declare-work[#:type "statute" #:title "Criminal Code" #:volume "RSC"
#:year "1985" #:chapter "C-46" #:url
"http://laws-lois.justice.gc.ca/eng/acts/C-46/FullText.html" #:id
"Criminal Code"]

◊declare-work[#:type "article" #:author-given "Benjamin"
#:author-family "Alarie" #:author2-given "Andrew James"
#:author2-family "Green" #:year "2010" #:url
"http://digitalcommons.osgoode.yorku.ca/ohlj/vol48/iss3/1 " #:title
"Interventions at the Supreme Court of Canada: Accuracy, Affiliation,
and Acceptance" #:journal "Osgoode Hall Law Journal" #:volume "48"
#:issue "3" #:first-page "381" #:id "Alarie"]

◊declare-work[#:type "magazine/news" #:author-given "Natasha"
#:author-family "Novac" #:author2-given "Bailey" #:author2-family
"Fox" #:author3-given "Nora" #:author3-family "Parker" #:date "12
February 2019" #:url
"http://www.thecourt.ca/2018-scc-a-year-in-review/" #:publication
"TheCourt.ca" #:title "2018 at the Supreme Court: A Year in Review"
#:id "Novac" #:short-form "Novac"]

◊declare-work[#:type "magazine/news" #:author "Adam Goldenberg" #:date "5 March
2018" #:url
"https://www.mccarthy.ca/en/insights/blogs/canadian-appeals-monitor/r-v-gtd-supreme-court-canada-decides-charter-case-bench-again"
#:publication "McCarthy Tétrault LLP (blog)" #:title "*R v GTD*: The
Supreme Court of Canada decides a Charter case from the bench — again"
#:id "Goldenberg" #:short-form "Goldenberg"]

◊title{Interveners at the Supreme Court of Canada: Revisited (2009--2018)}
◊subtitle{Sancho McCann}

◊heading{Interveners revisited}

I previously wrote about interveners at the Supreme Court of Canada
◊a[#:href "interveners.html"]{here}. (◊a[#:href
"https://supremeadvocacy.ca/articles/intervening-in-the-supreme-court-of-canada/"]{Interveners},
like amici curiae in the US, are third parties that provide
supplemental arguments in a case.) In that analysis, I observed that
as-of-right appeals attracted many fewer interveners than did
discretionary appeals. That was almost two years ago, so it is time
for an update. This updated analysis is based on a more robust and
complete collection of data spanning 2009--2018.◊note{Some of the
fresh analysis was inspired by suggestions from Professor Emma
Cunliffe, one of my criminal law professors. I also benefited from
viewing an intervener dataset that she had coded but my analysis here
is based on a fresh data acquisition and coding.}

The main takeaways:
◊itemize{

The rate of interventions has increased slightly over the past ten
years: from about 60% to about 66%.

The court has been increasingly willing to dispose of cases in
as-of-right criminal appeals with very brief judgments that do little
more than express agreement with one of the decisions from the lower
court.

The cases that are disposed of in the manner just described (very
brief judgments) are also the cases that tend to attract fewer
interveners. As-of-right criminal appeals that result in more lengthy,
substantive reasons seem to attract interveners at a rate closer to
that of criminal appeals on the discretionary docket, but there may
still be a gap.

}

◊sub-heading{Background: as-of-right appeals}

Most of the caseload at the Supreme Court of Canada consists of
discretionary appeals: the appellant requests that their appeal be
heard and the Court decides whether they will hear the case. But,
about 20--25% of the caseload at the Supreme Court of Canada consists
of appeals that are heard "as of right"---automatically. As-of-right
appeals generally involve indictable criminal offenses where one of
the judges at the lower court disagreed with their court's
decision.◊note-cite["Criminal Code" #:pinpoint "ss 691--693"]

◊sub-heading{Overall intervention rate}

◊fig[#:src "assets/appeals-with-interveners-2009-2018.png"]{The rate
of interventions has increased slightly over the past ten years: from
about 60% to about 66%. And earlier, from 2000--2008, interveners
participated in only about 50% of cases at the Supreme Court of
Canada.◊note-see["Alarie"]}

◊sub-heading{Keeping it short}

◊fig[#:src
"assets/criminal-appeals-aor-with-short-judgements.png"]{The Court has
been increasingly willing to dispose of as-of-right criminal appeals
via a very short judgment---often a single paragraph that is delivered
orally from the bench.}

If the Court's decision to dispose of a case with a very short,
single-paragraph judgment signals that the case did not present any
complex issues, that might explain some of the discrepancy between
interveners in as-of-right criminal appeals and other appeals.

To give a sense of what these short judgments look like, here is an
example from ◊declare-work[#:type "legal-case" #:title "R v Cody"
#:citation "2017 SCC 25" #:url
"https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16591/index.do"]

◊q{ The judgment of the Court was delivered orally by

[1] Abella J. — A majority of this Court is of the view that the
appeal should be allowed substantially for the reasons of Hoegg J.A.

[2] Justice Côté would dismiss the appeal substantially for the
reasons of the majority in the Court of Appeal.  }

This trend has been observed and criticized
elsewhere.◊note-see["Novac" #:parenthetical "\"[w]hile oral judgments
are an efficient way for the SCC to dispense with straightforward
appeals, too many oral judgments risks obscuring the reasoning behind
the Court’s decisions, which in turn may hinder the development of
jurisprudence\""]◊note-see["Goldenberg" #:parenthetical "\"[w]hen the
Court gives only brief oral reasons for judgment, it narrows its
circle of its analysis almost to the vanishing point\""]

◊fig[#:src
"assets/criminal-appeals-aor-with-short-judgements-intervener-or-not.png"]{As
the Court has increasingly been willing to use short judgments to
dispose of as-of-right criminal appeals, those haven't tended to be
the as-of-right appeals that have attracted interveners.}

◊fig[#:src
"assets/criminal-appeals-aor-with-substantive-judgements-intervener-or-not.png"]{As
the Court has been more selective regarding the as-of-right criminal
appeals for which it will provide substantive judgments, those tend
to also be the appeals that attracted interveners.}

It is not possible to tell whether interveners cause the Court to
deliver a more substantive judgment or whether there is a confounding
cause. Perhaps appeals that present more complex issues simultaneously
attract interveners and also demand a more substantive judgment.

A source familiar with public-interest interveners listed various
factors that they consider before intervening: Do they have the
capacity in the short time-frame? Do they have subject-area expertise?
Is there a matter of policy that exceeds the arguments being made by
the actual parties in the case? Is there a risk that poor reasoning in
this case will be a problem in future cases?

This list doesn't help tease apart the causation. A public-interest
intervener might introduce issues into the case that would have not
otherwise been addressed, causing the court to release more
substantive reasons. Or, they might tend to intervene when those
issues are already apparent and will be addressed regardless, with the
public-interest interveners just making sure that their particular
perspective on the issue is heard.

◊sub-heading{Still a gap?}

But even within this group of as-of-right criminal appeals that yield
substantive judgments, the proportion of appeals that attract
interveners still seems to lag behind the proportion of discretionary
criminal appeals that attract interveners.

◊fig[#:src
"assets/criminal-appeals-discretionary-vs-aor-with-substantive-judgements-intervener-or-not.png"]{Even
looking only at the subset of as-of-right criminal appeals that are
more likely to have attracted interveners (those that result in
substantive judgments), the rate of interventions still lags behind
that of discretionary criminal appeals. This is a small sample, but
several of the years on their own show a significant difference
between proportions (using Fisher's exact test), and when pooled
together across all years, the aggregate proportions also present a
significant difference (using Fisher's exact test and correcting for
multiple comparisons).}

◊heading{The data}

I've ◊a[#:href "https://github.com/sanchom/scc_stats"]{published the
Python code} that I used to retrieve and clean up the raw data from
the Supreme Court's website. I've also ◊a[#:href
"https://docs.google.com/spreadsheets/d/1zNUIDaw4Fd8H_zr-dZsIs8Si_8QlqPY6nIQGR8UzoVY/edit?usp=sharing"]{published
the cleaned-up data in a Google Spreadsheet}. It doesn't contain my
own coding for short/substantive decisions, but it should be a good
starting point for any research or analysis that you want to do. I've
also reproduced that same data below in what I hope is an
easy-to-explore table format. For grouping into years, I've relied on
the year from the neutral citation.

If you want slightly different data extracted or to have it in a
different format, just get in touch and I can help you out.

This data is not an exact reproduction of what you'll see on the
Supreme Court's website. The data from the Supreme Court doesn't use a
consistent name for each intervener (e.g. "Chartered Professional
Accountants of Canada" and "Chartered Professional Accountants
Canada") and there are even some spelling errors (e.g. “◊a[#:href
"https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34091"]{British
Columbia Civil Liberties Asssociation}”). Often, several entities
intervene together (e.g. "Dairy Farmers of Canada, Egg Farmers of
Canada, Chicken Farmers of Canada, Turkey Farmers of Canada, Canadian
Hatching Egg Producers"). In the dataset that I've provided, these
entities are separated, and every entity is referred to consistently
across all appeals that they intervene in. This should help if you
want to do any aggregation or counting. ◊a[#:href
"https://github.com/sanchom/scc_stats/blob/master/cleaned_equivalence_classes.txt"]{This
file} shows the sets of interveners that are considered equivalent and
also those that are separated out of lists of interveners.

Please let me know if you notice any interveners that are not named
consistently in this dataset of if I've chosen an incorrect name as
the canonical name.

◊heading{2009}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Appeals decided}◊th{Appeals with interveners}◊th{Appeals as of right}◊th{Appeals as of right with interventions}
}
◊tr{
◊td{62}◊td{37}◊td{14}◊td{2}
}
}
}

Note: In the tables below, "A.o.R" means "as of right".

◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Citation}◊th{Criminal?}◊th['((class "as-of-right-column"))]{A.o.R.?}◊th{Interveners}◊th['((class "no-print drop-on-small-screens"))]{Details}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/2670/index.do"]{Lipson v. Canada}}, 2009 SCC 1}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32041"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6390/index.do"]{R. v. Strecko}}, 2009 SCC 2}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32679"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6614/index.do"]{R. v. McNeil}}, 2009 SCC 3}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Criminal Lawyers' Association of Ontario}◊li{Hackett, Rodney}◊li{Marshall, Matthew}◊li{Police Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31852"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31852"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6867/index.do"]{R. v. Khela}}, 2009 SCC 4}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31933"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32325"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31933"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32325"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6630/index.do"]{R. v. Smith}}, 2009 SCC 5}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31980"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32323"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31980"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32323"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7327/index.do"]{Shafron v. KRG Insurance Brokers (Western) Inc.}}, 2009 SCC 6}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31981"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6421/index.do"]{Ravndahl v. Saskatchewan}}, 2009 SCC 7}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of New Brunswick}◊li{Attorney General of Newfoundland and Labrador}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32225"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32225"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6899/index.do"]{DesRochers v. Canada (Industry)}}, 2009 SCC 8}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of New Brunswick}◊li{Attorney General of the North West Territories}◊li{Fédération Franco-Ténoise}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31815"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31815"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6243/index.do"]{Ermineskin Indian Band and Nation v. Canada}}, 2009 SCC 9}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Attorney General of Alberta}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Lac Seul First Nation}◊li{Saddle Lake Indian Band}◊li{Stoney Indian Band}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31869"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31875"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31869"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31875"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6396/index.do"]{Rick v. Brandsema}}, 2009 SCC 10}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32098"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32098"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6649/index.do"]{Teck Cominco Metals Ltd. v. Lloyd's Underwriters}}, 2009 SCC 11}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32116"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6901/index.do"]{Canada (Citizenship and Immigration) v. Khosa}}, 2009 SCC 12}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Immigration and Refugee Board}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31952"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31952"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7819/index.do"]{R. v. Royz}}, 2009 SCC 13}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32806"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7359/index.do"]{R. v. S.J.L.}}, 2009 SCC 14}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des avocats de la défense de Montréal}◊li{Attorney General of Manitoba}◊li{Attorney General of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32309"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32309"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7598/index.do"]{B.M.P. Global Distribution Inc. v. Bank of Nova Scotia}}, 2009 SCC 15}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31930"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7599/index.do"]{Canada Post Corp. v. Lépine}}, 2009 SCC 16}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Cybersurf Corp.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32299"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32299"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7611/index.do"]{R. v. Patrick}}, 2009 SCC 17}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32354"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32354"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7613/index.do"]{R. v. Laboucan}}, 2009 SCC 18}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33010"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7612/index.do"]{Chatterjee v. Ontario (Attorney General)}}, 2009 SCC 19}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of Newfoundland and Labrador}◊li{Attorney General of Nova Scotia}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32204"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32204"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7614/index.do"]{United Parcel Service Canada Ltd. v. Canada}}, 2009 SCC 20}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32546"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7790/index.do"]{R. v. Middleton}}, 2009 SCC 21}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32138"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6733/index.do"]{R. v. Van}}, 2009 SCC 22}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32681"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6970/index.do"]{R. v. Craig}}, 2009 SCC 23}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32102"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32102"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7617/index.do"]{R. v. Ouellette}}, 2009 SCC 24}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32057"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32057"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6738/index.do"]{R. v. Nguyen}}, 2009 SCC 25}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32359"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32359"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/6981/index.do"]{R. v. Godin}}, 2009 SCC 26}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32740"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7798/index.do"]{R. v. Ellard}}, 2009 SCC 27}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32835"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7792/index.do"]{R. v. Griffin}}, 2009 SCC 28}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32649"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32650"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7793/index.do"]{Caisse populaire Desjardins de l'Est de Drummond v. Canada}}, 2009 SCC 29}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31787"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7795/index.do"]{A.C. v. Manitoba (Director of Child and Family Services)}}, 2009 SCC 30}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Manitoba}◊li{Justice for Children and Youth}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31955"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31955"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7796/index.do"]{Greater Vancouver Transportation Authority v. Canadian Federation of Students — British Columbia Component}}, 2009 SCC 31}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Adbusters Media Foundation}◊li{Attorney General of British Columbia}◊li{Attorney General of New Brunswick}◊li{British Columbia Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31845"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31845"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7799/index.do"]{R. v. Grant}}, 2009 SCC 32}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31892"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31892"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7800/index.do"]{R. v. Suberu}}, 2009 SCC 33}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des avocats de la défense de Montréal}◊li{Attorney General of British Columbia}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31912"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=31912"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7801/index.do"]{R. v. Harrison}}, 2009 SCC 34}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32487"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32487"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7802/index.do"]{R. v. Shepherd}}, 2009 SCC 35}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32037"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32037"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7807/index.do"]{R. v. Layton}}, 2009 SCC 36}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32883"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7808/index.do"]{Alberta v. Hutterian Brethren of Wilson Colony}}, 2009 SCC 37}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Canadian Civil Liberties Association}◊li{Christian Legal Fellowship}◊li{Evangelical Fellowship of Canada}◊li{Ontario Human Rights Commission}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32186"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32186"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7810/index.do"]{R. v. Bjelland}}, 2009 SCC 38}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32446"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7813/index.do"]{Nolan v. Kerry (Canada) Inc.}}, 2009 SCC 39}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association of Canadian Pension Management}◊li{Canadian Labour Congress}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32205"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32205"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7814/index.do"]{Bell Canada v. Bell Aliant Regional Communications}}, 2009 SCC 40}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Radio-Television and Telecommunications Commission}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32607"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32611"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32607"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32611"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7815/index.do"]{United States of America v. Anekwu}}, 2009 SCC 41}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32646"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7816/index.do"]{R. v. Jaw}}, 2009 SCC 42}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32706"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7817/index.do"]{Marcotte v. Longueuil (City)}}, 2009 SCC 43}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32213"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32214"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32213"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32214"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7818/index.do"]{Breslaw v. Montreal (City)}}, 2009 SCC 44}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32369"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7820/index.do"]{R. v. Last}}, 2009 SCC 45}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32809"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7821/index.do"]{Canada (Justice) v. Fischbacher}}, 2009 SCC 46}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32842"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7822/index.do"]{Nguyen v. Quebec (Education, Recreation and Sports)}}, 2009 SCC 47}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association Franco-ontarienne des conseils scolaires catholiques}◊li{Attorney General of Canada}◊li{Commission scolaire francophone des Territoires du Nord-Ouest}◊li{Commissioner of Official Languages for Canada}◊li{Quebec Association of Independent Schools}◊li{Quebec English School Boards Association}◊li{Quebec Provincial Association of Teachers}◊li{Tribunal administratif du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32229"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32319"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32229"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32319"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7823/index.do"]{Galambos v. Perez}}, 2009 SCC 48}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32586"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7824/index.do"]{Quebec (Revenue) v. Caisse populaire Desjardins de Montmagny}}, 2009 SCC 49}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Association of Insolvency and Restructuring Professionals}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32486"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32489"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32492"]{3}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32486"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32489"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32492"]{3}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7826/index.do"]{Northrop Grumman Overseas Services Corp. v. Canada (Attorney General)}}, 2009 SCC 50}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32752"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7827/index.do"]{Miazga v. Kvello Estate}}, 2009 SCC 51}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association in Defence of the Wrongly Convicted}◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of New Brunswick}◊li{Attorney General of Nova Scotia}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Canadian Association of Crown Counsel}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Criminal and Penal Prosecutions of Quebec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32208"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32208"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7828/index.do"]{R. v. Basi}}, 2009 SCC 52}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Association of Chiefs of Police}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32719"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32719"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7829/index.do"]{Consolidated Fastfrate Inc. v. Western Canada Council of Teamsters}}, 2009 SCC 53}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32290"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32290"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7830/index.do"]{Plourde v. Wal-Mart Canada Corp.}}, 2009 SCC 54}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alliance of Manufacturers & Exporters Canada, also known as Canadian Manufacturers & Exporters}◊li{Canadian Chamber of Commerce}◊li{Canadian Civil Liberties Association}◊li{Canadian Labour Congress}◊li{Coalition of BC Businesses}◊li{Commission des relations du travail}◊li{Conseil du patronat du Québec}◊li{Fédération des travailleurs du Québec (FTQ)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32342"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32342"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7831/index.do"]{Desbiens v. Wal-Mart Canada Corp.}}, 2009 SCC 55}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alliance of Manufacturers & Exporters Canada, also known as Canadian Manufacturers & Exporters}◊li{Canadian Chamber of Commerce}◊li{Canadian Civil Liberties Association}◊li{Canadian Labour Congress}◊li{Coalition of BC Businesses}◊li{Commission des relations du travail}◊li{Conseil du patronat du Québec}◊li{Fédération des travailleurs du Québec (FTQ)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32527"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32527"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7832/index.do"]{R. v. Legare}}, 2009 SCC 56}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Beyond Borders}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32829"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32829"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7833/index.do"]{R. v. Burke}}, 2009 SCC 57}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33031"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7834/index.do"]{R. v. Dudley}}, 2009 SCC 58}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32603"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32603"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7835/index.do"]{Co-operators Life Insurance Co. v. Gibbens}}, 2009 SCC 59}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Life and Health Insurance Association, Inc.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32677"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32677"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7836/index.do"]{R. v. Bird}}, 2009 SCC 60}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33054"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7837/index.do"]{Grant v. Torstar Corp.}}, 2009 SCC 61}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Book and Periodical Council}◊li{Canadian Association of Journalists}◊li{Canadian Broadcasting Corporation}◊li{Canadian Civil Liberties Association}◊li{Canadian Journalists for Free Expression}◊li{Canadian Newspaper Association}◊li{Cusson, Dano}◊li{Magazines Canada}◊li{Ottawa Citizen}◊li{PEN Canada}◊li{Professional Writers Association of Canada}◊li{RTNDA Canada/Association of Electronic Journalists}◊li{Writers Union of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32932"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32932"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7839/index.do"]{Quan v. Cusson}}, 2009 SCC 62}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Book and Periodical Council}◊li{Canadian Association of Journalists}◊li{Canadian Broadcasting Corporation}◊li{Canadian Civil Liberties Association}◊li{Canadian Journalists for Free Expression}◊li{Canadian Newspaper Association}◊li{Canadian Publishers' Council}◊li{Globe and Mail}◊li{Magazines Canada}◊li{PEN Canada}◊li{Peter Grant and Grant Forest Products Inc.}◊li{Professional Writers Association of Canada}◊li{RTNDA Canada/Association of Electronic Journalists}◊li{Toronto Star Newspapers Limited}◊li{Writers’ Union of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32420"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32420"]{1}]}
}
}
}
◊heading{2010}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Appeals decided}◊th{Appeals with interveners}◊th{Appeals as of right}◊th{Appeals as of right with interventions}
}
◊tr{
◊td{67}◊td{39}◊td{18}◊td{6}
}
}
}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Citation}◊th{Criminal?}◊th['((class "as-of-right-column"))]{A.o.R.?}◊th{Interveners}◊th['((class "no-print drop-on-small-screens"))]{Details}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7840/index.do"]{R. v. J.Z.S.}}, 2010 SCC 1}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Justice for Children and Youth}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32942"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32942"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7841/index.do"]{MiningWatch Canada v. Canada (Fisheries and Oceans)}}, 2010 SCC 2}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association for Mineral Exploration British Columbia}◊li{Canadian Environmental Law Association}◊li{Friends of the Earth Canada}◊li{Interamerican Association for Environmental Defense}◊li{Mining Association of British Columbia}◊li{Quebec Environmental Law Centre}◊li{Sierra Club of Canada}◊li{West Coast Environmental Law Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32797"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32797"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7842/index.do"]{Canada (Prime Minister) v. Khadr}}, 2010 SCC 3}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{Avocats sans frontières Canada}◊li{Barreau du Québec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Bar Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Coalition for the Rights of Children}◊li{Criminal Lawyers' Association of Ontario}◊li{David Asper Centre for Constitutional Rights}◊li{Groupe d'étude en droits et libertés de la Faculté de droit de l'Université Laval}◊li{Human Rights Watch}◊li{Justice for Children and Youth}◊li{National Council For the Protection of Canadians Abroad}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33289"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33289"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7843/index.do"]{Tercon Contractors Ltd. v. British Columbia (Transportation and Highways)}}, 2010 SCC 4}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32460"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32460"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7844/index.do"]{Fullowka v. Pinkerton's of Canada Ltd.}}, 2010 SCC 5}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32735"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32735"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7845/index.do"]{R. v. Nasogaluak}}, 2010 SCC 6}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Manitoba}◊li{Attorney General of Ontario}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Criminal Trial Lawyers' Association}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32423"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32423"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7846/index.do"]{R. v. Beaulieu}}, 2010 SCC 7}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33181"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7847/index.do"]{R. v. Morelli}}, 2010 SCC 8}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32741"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7848/index.do"]{R. v. Baker}}, 2010 SCC 9}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33323"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7849/index.do"]{R. v. Cunningham}}, 2010 SCC 10}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Bar Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Law Society of British Columbia}◊li{Law Society of Yukon}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32760"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32760"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7851/index.do"]{Reference re Broome v. Prince Edward Island}}, 2010 SCC 11}◊td{}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Marshall, Susan M.}◊li{Ross, Blair E.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33051"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33051"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7853/index.do"]{R. v. Laboucan}}, 2010 SCC 12}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33010"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7852/index.do"]{R. v. Briscoe}}, 2010 SCC 13}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32912"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32912"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7854/index.do"]{Montréal (City) v. Montreal Port Authority}}, 2010 SCC 14}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{City of Toronto}◊li{Federation of Canadian Municipalities}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32881"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32882"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32881"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32882"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7855/index.do"]{R. v. Szczerbaniwicz}}, 2010 SCC 15}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33189"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7856/index.do"]{R. v. National Post}}, 2010 SCC 16}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Attorney General of Alberta}◊li{Attorney General of Canada}◊li{Attorney General of New Brunswick}◊li{Bell GlobeMedia Inc.}◊li{Book and Periodical Council}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Journalists}◊li{Canadian Broadcasting Corporation}◊li{Canadian Civil Liberties Association}◊li{Canadian Journalists for Free Expression}◊li{Canadian Newspaper Association}◊li{Canadian Publishers' Council}◊li{Magazines Canada}◊li{PEN Canada}◊li{Professional Writers Association of Canada}◊li{RTNDA Canada/Association of Electronic Journalists}◊li{Writers Union of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32601"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32601"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7857/index.do"]{Quebec (Attorney General) v. Moses}}, 2010 SCC 17}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Attorney General of Saskatchewan}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32693"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32693"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7858/index.do"]{R. v. Hurley}}, 2010 SCC 18}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33301"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7859/index.do"]{Yugraneft Corp. v. Rexx Management Corp.}}, 2010 SCC 19}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{ADR Chambers Inc.}◊li{Canadian Arbitration Congress}◊li{Institut de médiation et d'arbitrage du Québec}◊li{London Court of International Arbitration}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32738"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32738"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7860/index.do"]{R. v. S.G.T.}}, 2010 SCC 20}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32890"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7861/index.do"]{Toronto Star Newspapers Ltd. v. Canada}}, 2010 SCC 21}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Attorney General of Alberta}◊li{Attorney General of Ontario}◊li{Canadian Association of Journalists}◊li{Canadian Civil Liberties Association}◊li{Canadian Newspaper Association}◊li{Director of Public Prosecutions of Canada}◊li{N.S.}◊li{N.Y.}◊li{RTNDA Canada/Association of Electronic Journalists}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32865"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33085"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32865"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33085"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7863/index.do"]{R. v. Conway}}, 2010 SCC 22}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{British Columbia Review Board}◊li{Community Legal Assistance Society}◊li{Criminal Lawyers Association}◊li{David Asper Centre for Constitutional Rights}◊li{Mental Health Legal Advocacy Coalition}◊li{Mental Health Legal Committee}◊li{Ontario Review Board}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32662"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32662"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7864/index.do"]{Ontario (Public Safety and Security) v. Criminal Lawyers' Association}}, 2010 SCC 23}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of New Brunswick}◊li{Attorney General of Newfoundland and Labrador}◊li{Attorney General of Nova Scotia}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Journalists}◊li{Canadian Bar Association}◊li{Canadian Newspaper Association}◊li{Federation of Law Societies of Canada}◊li{Information Commissioner of Canada}◊li{Tom Mitchinson, Assistant Commissioner, Office of the Information and Privacy Commissioner of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32172"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32172"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7865/index.do"]{R. v. Nolet}}, 2010 SCC 24}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33032"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7866/index.do"]{R. v. Levigne}}, 2010 SCC 25}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33450"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7867/index.do"]{R. v. Shea}}, 2010 SCC 26}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33466"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7868/index.do"]{Vancouver (City) v. Ward}}, 2010 SCC 27}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{Association in Defence of the Wrongly Convicted}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Chiefs of Police}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{David Asper Centre for Constitutional Rights}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33089"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33089"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7869/index.do"]{Syndicat de la fonction publique du Québec v. Quebec (Attorney General)}}, 2010 SCC 28}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Commission des normes, de l'équité, de la santé et de la sécurité du travail}◊li{Confédération des syndicats nationaux}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32771"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32772"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32771"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32772"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7870/index.do"]{Syndicat des professeurs du Cégep de Ste-Foy v. Quebec (Attorney General)}}, 2010 SCC 29}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Confédération des syndicats nationaux}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32773"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32773"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7871/index.do"]{Syndicat des professeurs et des professeures de l'Université du Québec à Trois-Rivières v. Université du Québec à Trois-Rivières}}, 2010 SCC 30}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Confédération des syndicats nationaux}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32776"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32776"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7873/index.do"]{R. v. Cornell}}, 2010 SCC 31}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33186"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33186"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7872/index.do"]{R. v. Pickton}}, 2010 SCC 32}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33288"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7874/index.do"]{Progressive Homes Ltd. v. Lombard General Insurance Co. of Canada}}, 2010 SCC 33}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33170"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7876/index.do"]{Burke v. Hudson's Bay Co.}}, 2010 SCC 34}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32789"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7877/index.do"]{R. v. Sinclair}}, 2010 SCC 35}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32537"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32537"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7878/index.do"]{R. v. McCrimmon}}, 2010 SCC 36}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32969"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32969"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7879/index.do"]{R. v. Willier}}, 2010 SCC 37}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32769"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32769"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7880/index.do"]{Quebec (Attorney General) v. Lacombe}}, 2010 SCC 38}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of New Brunswick}◊li{Attorney General of Ontario}◊li{Greater Toronto Airports Authority}◊li{Municipalité de Sacré-Coeur}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32608"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32608"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7881/index.do"]{Quebec (Attorney General) v. Canadian Owners and Pilots Association}}, 2010 SCC 39}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of New Brunswick}◊li{Attorney General of Ontario}◊li{Berthe Ducasse}◊li{Bruce Shoor}◊li{Chantale Trépanier}◊li{City of Shawinigan}◊li{Commission de protection du territoire agricole du Québec}◊li{Greater Toronto Airports Authority}◊li{Jocelyne Galardo}◊li{Lortie, juge de la Cour du Québec, Pierre}◊li{Louise Barber}◊li{Louise Sokolik}◊li{Michel Sokolik}◊li{Rusty Barber}◊li{Tribunal administratif du Québec}◊li{William Barber}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32604"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32604"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7882/index.do"]{Kuwait Airways Corp. v. Iraq}}, 2010 SCC 40}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33145"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7883/index.do"]{Globe and Mail v. Canada (Attorney General)}}, 2010 SCC 41}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Astral Media Radio Inc.}◊li{Barreau du Québec}◊li{Canadian Broadcasting Corporation}◊li{Canadian Civil Liberties Association}◊li{Fédération professionnelle des journalistes du Québec}◊li{Gesca Limitée}◊li{Groupe TVA inc.}◊li{Joël-Denis Bellavance}◊li{La Presse, ltée}◊li{Médias Transcontinental Inc.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32975"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33097"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33114"]{3}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32975"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33097"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33114"]{3}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7884/index.do"]{R. v. Allen}}, 2010 SCC 42}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33558"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7885/index.do"]{Rio Tinto Alcan Inc. v. Carrier Sekani Tribal Council}}, 2010 SCC 43}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{British Columbia Utilities Commission}◊li{Duncan's First Nation}◊li{Enbridge Pipelines Inc.}◊li{First Nations Summit}◊li{Horse Lake First Nation}◊li{Independent Power Producer Association of British Columbia}◊li{Lakes Division of the Secwepemc Nation}◊li{Mikisew Cree First Nation}◊li{Moosomin First Nation}◊li{Nlaka'pamux Nation Tribal Council}◊li{Nunavut Tunngavik Incorporated}◊li{Okanagan Nation Alliance}◊li{Standing Buffalo Dakota First Nation}◊li{TransCanada Keystone Pipeline GP Ltd.}◊li{Upper Nicola Indian Band}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33132"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33132"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7886/index.do"]{Christensen v. Roman Catholic Archbishop of Québec}}, 2010 SCC 44}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33360"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7888/index.do"]{NIL/TU,O Child and Family Services Society v. B.C. Government and Service Employees' Union}}, 2010 SCC 45}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of New Brunswick}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{British Columbia Labour Relations Board}◊li{Canadian Human Rights Commission}◊li{First Nations Summit}◊li{First Nations of Québec}◊li{Kwumut Lelum Child and Family Services Society}◊li{Labrador Health and Social Services Commission}◊li{Mohawk Council of Akwesasne}◊li{Te'Mexw Nations}◊li{of Québec and Labrador}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32862"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32862"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7889/index.do"]{Communications, Energy and Paperworkers Union of Canada v. Native Child and Family Services of Toronto}}, 2010 SCC 46}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of New Brunswick}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{First Nations of Québec}◊li{Labrador Health and Social Services Commission}◊li{of Québec and Labrador}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32908"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32908"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7890/index.do"]{Bank of Montreal v. Innovation Credit Union}}, 2010 SCC 47}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33153"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7891/index.do"]{Royal Bank of Canada v. Radius Credit Union Ltd.}}, 2010 SCC 48}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33152"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7893/index.do"]{R. v. Lutoslawski}}, 2010 SCC 49}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33723"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7894/index.do"]{R. v. Imoro}}, 2010 SCC 50}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33649"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33649"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7892/index.do"]{de Montigny v. Brossard (Succession)}}, 2010 SCC 51}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Quebec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32860"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32860"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7895/index.do"]{R. v. Lee}}, 2010 SCC 52}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33575"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7896/index.do"]{Beckman v. Little Salmon/Carmacks First Nation}}, 2010 SCC 53}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Attorney General of Canada}◊li{Attorney General of Newfoundland and Labrador}◊li{Attorney General of Quebec}◊li{Council of Yukon First Nations}◊li{Grand Council of Cree (Eeyou Istchee), Cree Nation Government}◊li{Gwich'in Tribal Council}◊li{Kwanlin Dün First Nation}◊li{Nunavut Tunngavik Incorporated}◊li{Sahtu Secretariat Incorporated}◊li{Te'Mexw Nations}◊li{Tlicho Government}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32850"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32850"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7897/index.do"]{R. v. Hay}}, 2010 SCC 54}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33536"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7898/index.do"]{R. v. Gomboc}}, 2010 SCC 55}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33332"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33332"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7899/index.do"]{Németh v. Canada (Justice)}}, 2010 SCC 56}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Barreau du Québec}◊li{Canadian Council for Refugees}◊li{Quebec Immigration Lawyers Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33016"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33016"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7901/index.do"]{Gavrila v. Canada (Justice)}}, 2010 SCC 57}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{Association québécoise des avocats et avocates en droit de l'immigration}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33313"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33313"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7902/index.do"]{R. v. Tran}}, 2010 SCC 58}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33467"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33467"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7903/index.do"]{R. v. White}}, 2010 SCC 59}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33330"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7904/index.do"]{Century Services Inc. v. Canada (Attorney General)}}, 2010 SCC 60}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33239"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7905/index.do"]{Reference re Assisted Human Reproduction Act}}, 2010 SCC 61}◊td{}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of New Brunswick}◊li{Attorney General of Saskatchewan}◊li{Awad, Michael}◊li{Canadian Conference of Catholic Bishops}◊li{Evangelical Fellowship of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32750"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32750"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7906/index.do"]{Canada (Attorney General) v. TeleZone Inc.}}, 2010 SCC 62}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33041"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7907/index.do"]{Canada (Attorney General) v. McArthur}}, 2010 SCC 63}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Anglehart sr. et al., Roland}◊li{Attorney General of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33043"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33043"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7908/index.do"]{Parrish & Heimbecker Ltd. v. Canada (Agriculture and Agri-Food)}}, 2010 SCC 64}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33006"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7909/index.do"]{Nu-Pharm Inc. v. Canada (Attorney General)}}, 2010 SCC 65}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32830"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7910/index.do"]{Canadian Food Inspection Agency v. Professional Institute of the Public Service of Canada}}, 2010 SCC 66}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32880"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7911/index.do"]{Manuge v. Canada}}, 2010 SCC 67}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33103"]{1}]}
}
}
}
◊heading{2011}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Appeals decided}◊th{Appeals with interveners}◊th{Appeals as of right}◊th{Appeals as of right with interventions}
}
◊tr{
◊td{66}◊td{38}◊td{21}◊td{6}
}
}
}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Citation}◊th{Criminal?}◊th['((class "as-of-right-column"))]{A.o.R.?}◊th{Interveners}◊th['((class "no-print drop-on-small-screens"))]{Details}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7913/index.do"]{Celgene Corp. v. Canada (Attorney General)}}, 2011 SCC 1}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33579"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7914/index.do"]{Canadian Broadcasting Corp. v. Canada (Attorney General)}}, 2011 SCC 2}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Attorney General of Alberta}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Journalists}◊li{Canadian Civil Liberties Association}◊li{Canadian Journalists for Free Expression}◊li{Canadian Newspaper Association}◊li{Canadian Publishers' Council}◊li{RTNDA Canada/Association of Electronic Journalists}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32920"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32920"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7915/index.do"]{Canadian Broadcasting Corp. v. The Queen}}, 2011 SCC 3}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Canada}◊li{Attorney General of New Brunswick}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32987"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32987"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7916/index.do"]{R. v. Bruce}}, 2011 SCC 4}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33735"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7917/index.do"]{R. v. Caron}}, 2011 SCC 5}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association canadienne-française de l'Alberta}◊li{Canadian Civil Liberties Association}◊li{Charter Committee on Poverty Issues}◊li{Commissioner of Official Languages for Canada}◊li{Council of Canadians with Disabilities}◊li{David Asper Centre for Constitutional Rights}◊li{Poverty and Human Rights Centre}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33092"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33092"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7918/index.do"]{R. v. Ahmad}}, 2011 SCC 6}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33066"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33066"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7919/index.do"]{Smith v. Alliance Pipeline Ltd.}}, 2011 SCC 7}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Arbitration Committee, appointed pursuant to the National Energy Board Act, R.S.C. 1985, c.N-7, Part V}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33203"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33203"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7920/index.do"]{R. v. Miljevic}}, 2011 SCC 8}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33714"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7921/index.do"]{Bou Malhab v. Diffusion Métromédia CMR inc.}}, 2011 SCC 9}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Canadian Association of Journalists}◊li{Canadian Broadcasting Corporation}◊li{Canadian Civil Liberties Association}◊li{Canadian Newspaper Association}◊li{Conseil National des citoyens et citoyennes d'origine haïtienne}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32931"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32931"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7922/index.do"]{Kerr v. Baranow}}, 2011 SCC 10}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33157"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33358"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7923/index.do"]{Québec (Attorney General) v. Canada}}, 2011 SCC 11}◊td{}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33524"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7925/index.do"]{Withler v. Canada (Attorney General)}}, 2011 SCC 12}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33039"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33039"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7926/index.do"]{R. v. White}}, 2011 SCC 13}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33464"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7928/index.do"]{R. v. S.D.}}, 2011 SCC 14}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33842"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7927/index.do"]{Seidel v. TELUS Communications Inc.}}, 2011 SCC 15}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{ADR Chambers Inc.}◊li{Barreau du Québec}◊li{Canadian Arbitration Congress}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33154"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33154"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7929/index.do"]{R. v. St-Onge}}, 2011 SCC 16}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33864"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7930/index.do"]{R. v. J.A.A.}}, 2011 SCC 17}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33782"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7932/index.do"]{British Columbia (Attorney General) v. Malik}}, 2011 SCC 18}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33266"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7933/index.do"]{R. v. Reynolds}}, 2011 SCC 19}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33919"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7934/index.do"]{Ontario (Attorney General) v. Fraser}}, 2011 SCC 20}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of New Brunswick}◊li{Attorney General of Quebec}◊li{British Columbia Agriculture Council}◊li{Canadian Civil Liberties Association}◊li{Canadian Employers Council}◊li{Canadian Labour Congress}◊li{Canadian Police Association}◊li{Coalition of BC Businesses}◊li{Conseil du patronat du Québec}◊li{Federally Regulated Employers - Transportation and Communications}◊li{Industrial Accident Victims Group of Ontario}◊li{Justicia for Migrant Workers}◊li{Mounted Police Members' Legal Fund}◊li{Ontario Federation of Agriculture}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32968"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=32968"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7931/index.do"]{R. v. Loewen}}, 2011 SCC 21}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33914"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7936/index.do"]{R. v. V.Y.}}, 2011 SCC 22}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Association in Defence of the Wrongly Convicted}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33841"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33841"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7937/index.do"]{Sharbern Holding Inc. v. Vancouver Airport Centre Ltd.}}, 2011 SCC 23}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33280"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7938/index.do"]{Alberta v. Elder Advocates of Alberta Society}}, 2011 SCC 24}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33551"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33551"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7939/index.do"]{Canada (Information Commissioner) v. Canada (Minister of National Defence)}}, 2011 SCC 25}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Canadian Association of Journalists}◊li{Canadian Civil Liberties Association}◊li{Canadian Newspaper Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33296"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33297"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33299"]{3}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33300"]{4}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33296"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33297"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33299"]{3}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33300"]{4}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7940/index.do"]{i Trade Finance Inc. v. Bank of Montreal}}, 2011 SCC 26}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33394"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7941/index.do"]{Masterpiece Inc. v. Alavida Lifestyles Inc.}}, 2011 SCC 27}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{International Trademark Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33459"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33459"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7942/index.do"]{R. v. J.A.}}, 2011 SCC 28}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33684"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33684"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7943/index.do"]{R. v. O'Brien}}, 2011 SCC 29}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33817"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7944/index.do"]{Canada (Attorney General) v. Mavi}}, 2011 SCC 30}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Civil Liberties Association}◊li{Canadian Council for Refugees}◊li{Metropolitan Action Committee on Violence against Women and Children}◊li{South Asia Legal Clinic of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33520"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33520"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7945/index.do"]{R. v. E.M.W.}}, 2011 SCC 31}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33930"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7946/index.do"]{R. v. Campbell}}, 2011 SCC 32}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33916"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33916"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7948/index.do"]{Aecon Buildings v. Stephenson Engineering Ltd.}}, 2011 SCC 33}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34112"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7949/index.do"]{R. v. Nixon}}, 2011 SCC 34}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Manitoba}◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association of Ontario}◊li{Criminal Trial Lawyers' Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33476"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33476"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7950/index.do"]{Schreyer v. Schreyer}}, 2011 SCC 35}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33443"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7951/index.do"]{Canada Trustco Mortgage Co. v. Canada}}, 2011 SCC 36}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33422"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7952/index.do"]{Alberta (Aboriginal Affairs and Northern Development) v. Cunningham}}, 2011 SCC 37}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Canadian Association for Community Living}◊li{East Prairie Métis Settlement}◊li{Elizabeth Métis Settlement}◊li{Gift Lake Métis Settlement}◊li{Métis Nation of Alberta}◊li{Métis National Council}◊li{Métis Settlements General Council}◊li{Native Women's Association of Canada}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33340"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33340"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7953/index.do"]{Bastien Estate v. Canada}}, 2011 SCC 38}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Assembly of Manitoba Chiefs}◊li{Chiefs in Ontario}◊li{Grand Council of Cree (Eeyou Istchee), Cree Nation Government}◊li{Huron-Wendat Nation}◊li{Union of Nova Scotia Indians}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33196"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33196"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7954/index.do"]{Dubé v. Canada}}, 2011 SCC 39}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Assembly of Manitoba Chiefs}◊li{Chiefs in Ontario}◊li{Grand Council of Cree (Eeyou Istchee), Cree Nation Government}◊li{Union of Nova Scotia Indians}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33194"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33194"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7955/index.do"]{R. v. Sinclair}}, 2011 SCC 40}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33359"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33359"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7956/index.do"]{Kuwait Airways Corp. v. Iraq}}, 2011 SCC 41}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33145"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7957/index.do"]{R. v. Imperial Tobacco Canada Ltd.}}, 2011 SCC 42}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Her Majesty the Queen in Right of the Province of New Brunswick}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33559"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33563"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33559"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33563"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7958/index.do"]{R. v. Topp}}, 2011 SCC 43}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33529"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33529"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7960/index.do"]{Canada (Attorney General) v. PHS Community Services Society}}, 2011 SCC 44}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association of Registered Nurses of British Columbia}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{British Columbia Nurses' Union}◊li{CACTUS Montréal}◊li{Canadian Civil Liberties Association}◊li{Canadian HIV/AIDS Legal Network}◊li{Canadian Medical Association}◊li{Canadian Nurses Association}◊li{Canadian Public Health Association}◊li{Dr. Peter AIDS Foundation}◊li{International Harm Reduction Association}◊li{Real Women Canada}◊li{Registered Nurses' Association of Ontario}◊li{Vancouver Coastal Health Authority}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33556"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33556"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7961/index.do"]{R. v. J.M.H.}}, 2011 SCC 45}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33667"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33667"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7962/index.do"]{R. v. Côté}}, 2011 SCC 46}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33645"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33645"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7963/index.do"]{Crookes v. Newton}}, 2011 SCC 47}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Journalists for Free Expression}◊li{Canadian Newspaper Association}◊li{Canadian Publishers' Council}◊li{Magazines Canada}◊li{NetCoalition}◊li{PEN Canada}◊li{Professional Writers Association of Canada}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}◊li{Writers Union of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33412"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33412"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7964/index.do"]{R. v. Katigbak}}, 2011 SCC 48}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33762"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33762"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7965/index.do"]{R. v. Whyte}}, 2011 SCC 49}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33965"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7966/index.do"]{R. v. Dorfer}}, 2011 SCC 50}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33952"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7967/index.do"]{R. v. Barros}}, 2011 SCC 51}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Association of Chiefs of Police}◊li{Canadian Civil Liberties Association}◊li{Canadian Crime Stoppers Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33727"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33727"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7968/index.do"]{British Columbia (Workers' Compensation Board) v. Figliola}}, 2011 SCC 52}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Human Rights Commission}◊li{Attorney General of British Columbia}◊li{Canadian Human Rights Commission}◊li{Coalition of BC Businesses}◊li{Vancouver Area Human Rights Coalition Society}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33648"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33648"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7969/index.do"]{Canada (Canadian Human Rights Commission) v. Canada (Attorney General)}}, 2011 SCC 53}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Bar Association}◊li{Council of Canadians with Disabilities}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33507"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33507"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7970/index.do"]{R. v. Sarrazin}}, 2011 SCC 54}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33917"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7973/index.do"]{R. v. Banwait}}, 2011 SCC 55}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34044"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7972/index.do"]{Lax Kw'alaams Indian Band v. Canada (Attorney General)}}, 2011 SCC 56}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{B.C. Seafood Alliance}◊li{B.C. Wildlife Federation}◊li{Gitxaala Nation}◊li{Metlakatla Band}◊li{Te'Mexw Nations}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33581"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33581"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7975/index.do"]{Public Service Alliance of Canada v. Canada Post Corp.}}, 2011 SCC 57}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33668"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33669"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33670"]{3}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7976/index.do"]{R. v. Bouchard-Lebrun}}, 2011 SCC 58}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33687"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33687"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7977/index.do"]{Nor-Man Regional Health Authority Inc. v. Manitoba Association of Health Care Professionals}}, 2011 SCC 59}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33795"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33795"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7978/index.do"]{Quebec (Attorney General) v. Canada (Human Resources and Social Development)}}, 2011 SCC 60}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Bruyère, Rock}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33511"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33511"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7979/index.do"]{Alberta (Information and Privacy Commissioner) v. Alberta Teachers' Association}}, 2011 SCC 61}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{British Columbia Freedom of Information and Privacy Association}◊li{Information and Privacy Commissioner of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33620"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33620"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7980/index.do"]{Newfoundland and Labrador Nurses' Union v. Newfoundland and Labrador (Treasury Board)}}, 2011 SCC 62}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33659"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7981/index.do"]{Copthorne Holdings Ltd. v. Canada}}, 2011 SCC 63}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33283"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7982/index.do"]{L.M.P. v. L.S.}}, 2011 SCC 64}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Disabled Women's Network Canada}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33749"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33749"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7983/index.do"]{R.P. v. R.C.}}, 2011 SCC 65}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33698"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7984/index.do"]{Reference re Securities Act}}, 2011 SCC 66}◊td{}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Manitoba}◊li{Attorney General of New Brunswick}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Barreau du Québec}◊li{Canadian Bankers Association}◊li{Canadian Coalition for Good Governance}◊li{Canadian Foundation for Advancement of Investor Rights}◊li{Institute for Governance of Private and Public Organizations}◊li{Investment Industry Association of Canada}◊li{Mouvement d'Éducation et de défense des Actionnaires}◊li{Ontario Teachers' Pension Plan Board}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33718"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33718"]{1}]}
}
}
}
◊heading{2012}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Appeals decided}◊th{Appeals with interveners}◊th{Appeals as of right}◊th{Appeals as of right with interventions}
}
◊tr{
◊td{75}◊td{47}◊td{15}◊td{5}
}
}
}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Citation}◊th{Criminal?}◊th['((class "as-of-right-column"))]{A.o.R.?}◊th{Interveners}◊th['((class "no-print drop-on-small-screens"))]{Details}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7986/index.do"]{Toronto-Dominion Bank v. Canada}}, 2012 SCC 1}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33878"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7987/index.do"]{Catalyst Paper Corp. v. North Cowichan (District)}}, 2012 SCC 2}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33744"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7988/index.do"]{Merck Frosst Canada Ltd. v. Canada (Health)}}, 2012 SCC 3}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{BIOTECanada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33290"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33320"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33290"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33320"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7989/index.do"]{Reference re Broadcasting Act}}, 2012 SCC 4}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Radio-Television and Telecommunications Commission}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33884"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33884"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7990/index.do"]{R. v. D.A.I.}}, 2012 SCC 5}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Council of Canadians with Disabilities}◊li{Criminal Lawyers' Association of Ontario}◊li{Disabled Women's Network Canada}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33657"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33657"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7991/index.do"]{R v. T.L.M.}}, 2012 SCC 6}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34288"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7992/index.do"]{S.L. v. Commission scolaire des Chênes}}, 2012 SCC 7}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Catholic School Trustees' Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Council of Christian Charities}◊li{Christian Legal Fellowship}◊li{Coalition pour la liberté en éducation}◊li{Evangelical Fellowship of Canada}◊li{Fédération des commissions scolaires du Québec}◊li{Regroupement Chrétien pour le droit parental en éducation}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33678"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33678"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7994/index.do"]{Richard v. Time Inc.}}, 2012 SCC 8}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33554"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7995/index.do"]{Momentous.ca Corp. v. Canadian American Association of Professional Baseball Ltd.}}, 2012 SCC 9}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33999"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7996/index.do"]{Halifax (Regional Municipality) v. Nova Scotia (Human Rights Commission)}}, 2012 SCC 10}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Human Rights Commission}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33651"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33651"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7997/index.do"]{R. v. Eastgaard}}, 2012 SCC 11}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34337"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/7998/index.do"]{Doré v. Barreau du Québec}}, 2012 SCC 12}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Civil Liberties Association}◊li{Federation of Law Societies of Canada}◊li{Young Bar Association of Montreal}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33594"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33594"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8000/index.do"]{R. v. Ipeelee}}, 2012 SCC 13}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33650"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34245"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33650"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34245"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8001/index.do"]{Fundy Settlement v. Canada}}, 2012 SCC 14}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34056"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34057"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8003/index.do"]{R. v. Kociuk}}, 2012 SCC 15}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34517"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8002/index.do"]{R. v. Tse}}, 2012 SCC 16}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33751"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33751"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8004/index.do"]{Club Resorts Ltd. v. Van Breda}}, 2012 SCC 17}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{Canadian Centre for International Justice}◊li{Canadian Lawyers for International Human Rights}◊li{Ontario Trial Lawyers Association}◊li{Tourism Industry Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33606"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33692"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33606"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33692"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8005/index.do"]{Éditions Écosociété Inc. v. Banro Corp.}}, 2012 SCC 18}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33819"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33819"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8006/index.do"]{Breeden v. Black}}, 2012 SCC 19}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33900"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33900"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8007/index.do"]{Calgary (City) v. Canada}}, 2012 SCC 20}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33804"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8008/index.do"]{R. v. Jesse}}, 2012 SCC 21}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33694"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8009/index.do"]{R. v. R.P.}}, 2012 SCC 22}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34038"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8010/index.do"]{Tessier Ltée v. Quebec (Commission de la santé et de la sécurité du travail)}}, 2012 SCC 23}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Commission des lésions professionnelles}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33935"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33935"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8011/index.do"]{R. v. Maybin}}, 2012 SCC 24}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34011"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34011"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8013/index.do"]{Cinar Corporation v. Robinson}}, 2012 SCC 25}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{3918203 Canada Inc.}◊li{BBC Worldwide Television}◊li{Charest, Hélène}◊li{Christophe Izard}◊li{Davin, Christian}◊li{Films Cinar Inc.}◊li{France Animation S.A.}◊li{Izard, Christophe}◊li{McRaw Holdings Inc.}◊li{Music Canada}◊li{Plummer-Andrews, Theresa}◊li{RTV Family Entertainment AG}◊li{Ravensburger Film + TV GmbH}◊li{Ronald A. Weinberg, in his capacity as sole liquidator of the succession of the late Micheline Charest}◊li{Videal Gesellschaft Zur Hertellung Von Audiovisuellen Produkten MHB}◊li{Weinberg, Ronald A.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34466"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34467"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34468"]{3}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34466"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34467"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34468"]{3}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/8259/index.do"]{R. v. Roy}}, 2012 SCC 26}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33699"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9987/index.do"]{Annapolis County District School Board v. Marshall}}, 2012 SCC 27}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34189"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9988/index.do"]{R. v. Gibbons}}, 2012 SCC 28}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33813"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9989/index.do"]{Halifax (Regional Municipality) v. Canada (Public Works and Government Services)}}, 2012 SCC 29}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association of Canadian Port Authorities}◊li{City of Quebec}◊li{City of Toronto}◊li{Federation of Canadian Municipalities}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33876"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33876"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9990/index.do"]{Westmount (City) v. Rossy}}, 2012 SCC 30}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34060"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9991/index.do"]{R. v. Mayuran}}, 2012 SCC 31}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34526"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9992/index.do"]{Clements v. Clements}}, 2012 SCC 32}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34100"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34100"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9993/index.do"]{R. v. Venneri}}, 2012 SCC 33}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34523"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9994/index.do"]{Entertainment Software Association v. Society of Composers, Authors and Music Publishers of Canada}}, 2012 SCC 34}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{CMRRA-SODRAC Inc.}◊li{Cineplex Entertainment LP}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33921"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33921"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9995/index.do"]{Rogers Communications Inc. v. Society of Composers, Authors and Music Publishers of Canada}}, 2012 SCC 35}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Apple Canada Inc.}◊li{CMRRA-SODRAC Inc.}◊li{Cineplex Entertainment LP}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33922"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33922"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9996/index.do"]{Society of Composers, Authors and Music Publishers of Canada v. Bell Canada}}, 2012 SCC 36}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Association of University Teachers}◊li{Canadian Legal Information Institute}◊li{Computer & Communications Industry Association}◊li{Federation of Law Societies of Canada}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33800"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33800"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9997/index.do"]{Alberta (Education) v. Canadian Copyright Licensing Agency (Access Copyright)}}, 2012 SCC 37}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association of Canadian Community Colleges}◊li{Association of Canadian Publishers}◊li{Association of Universities and Colleges of Canada}◊li{CMRRA-SODRAC Inc.}◊li{Canadian Association of University Teachers}◊li{Canadian Authors Association}◊li{Canadian Educational Resources Council}◊li{Canadian Federation of Students}◊li{Canadian Freelance Union}◊li{Canadian Publishers' Council}◊li{Canadian Society of Children's Authors}◊li{Centre for Innovation Law and Policy of the Faculty of Law University of Toronto}◊li{Illustrators and Performers}◊li{League of Canadian Poets}◊li{Literary Translators' Association of Canada}◊li{Playwrights Guild of Canada}◊li{Professional Writers Association of Canada}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}◊li{Writers Union of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33888"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33888"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/9999/index.do"]{Re:Sound v. Motion Picture Theatre Associations of Canada}}, 2012 SCC 38}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34210"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34210"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10000/index.do"]{R. v. Punko}}, 2012 SCC 39}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34135"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34193"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10001/index.do"]{R. v. Vu}}, 2012 SCC 40}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34286"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10002/index.do"]{R. v. Walle}}, 2012 SCC 41}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34080"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34080"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10003/index.do"]{R. v. Knott}}, 2012 SCC 42}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33911"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10004/index.do"]{Canada v. Craig}}, 2012 SCC 43}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34144"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10005/index.do"]{R. v. Bellusci}}, 2012 SCC 44}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34054"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34054"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10006/index.do"]{Canada (Attorney General) v. Downtown Eastside Sex Workers United Against Violence Society}}, 2012 SCC 45}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{ARCH Disability Law Centre}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Civil Liberties Association}◊li{Canadian Council for Refugees}◊li{Canadian HIV/AIDS Legal Network}◊li{Coalition of}◊li{Community Legal Assistance Society}◊li{Conseil scolaire francophone de la Colombie-Britannique}◊li{David Asper Centre for Constitutional Rights}◊li{Ecojustice Canada}◊li{HIV & AIDS Legal Clinic Ontario}◊li{Justice for Children and Youth}◊li{Positive Living Society of British Columbia}◊li{West Coast Women's Legal Education and Action Fund (West Coast LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33981"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33981"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10007/index.do"]{A.B. v. Bragg Communications Inc.}}, 2012 SCC 46}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Beyond Borders}◊li{Book and Periodical Council}◊li{British Columbia Civil Liberties Association}◊li{BullyingCanada Inc.}◊li{Canadian Association of Journalists}◊li{Canadian Civil Liberties Association}◊li{Canadian Unicef Committee}◊li{Information and Privacy Commissioner of Ontario}◊li{Kids Help Phone}◊li{Newspaper Canada}◊li{Privacy Commissioner of Canada}◊li{Professional Writers Association of Canada}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34240"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34240"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10008/index.do"]{R. v. Mabior}}, 2012 SCC 47}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des avocats de la défense de Montréal}◊li{Black Coalition for AIDS Prevention}◊li{British Columbia Civil Liberties Association}◊li{Canadian AIDS Society}◊li{Canadian Aboriginal AIDS Network}◊li{Canadian HIV/AIDS Legal Network}◊li{Coalition des organismes communautaires québécois de lutte contre le sida}◊li{Criminal Lawyers' Association of Ontario}◊li{HIV & AIDS Legal Clinic Ontario}◊li{L'institut national de santé publique du Québec}◊li{Positive Living Society of British Columbia}◊li{Toronto People With AIDS Foundation}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33976"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33976"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10010/index.do"]{R. v. D.C.}}, 2012 SCC 48}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des avocats de la défense de Montréal}◊li{Attorney General of Alberta}◊li{Black Coalition for AIDS Prevention}◊li{British Columbia Civil Liberties Association}◊li{Canadian AIDS Society}◊li{Canadian Aboriginal AIDS Network}◊li{Canadian HIV/AIDS Legal Network}◊li{Coalition des organismes communautaires québécois de lutte contre le sida}◊li{Criminal Lawyers' Association of Ontario}◊li{HIV & AIDS Legal Clinic Ontario}◊li{L'institut national de santé publique du Québec}◊li{Positive Living Society of British Columbia}◊li{Toronto People With AIDS Foundation}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34094"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34094"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10011/index.do"]{R. v. Prokofiew}}, 2012 SCC 49}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Quebec}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33754"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33754"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12614/index.do"]{R. v. Rochon}}, 2012 SCC 50}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34557"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34557"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12612/index.do"]{Southcott Estates Inc. v. Toronto Catholic District School Board}}, 2012 SCC 51}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33778"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12613/index.do"]{Canada v. GlaxoSmithKline Inc.}}, 2012 SCC 52}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33874"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12615/index.do"]{R. v. Cole}}, 2012 SCC 53}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Quebec}◊li{Canadian Association of Counsel to Employers}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34268"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34268"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12616/index.do"]{R. v. Picot}}, 2012 SCC 54}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34499"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12635/index.do"]{Opitz v. Wrzesnewskyj}}, 2012 SCC 55}◊td{}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Civil Liberties Association}◊li{Keith Archer (Chief Electoral Officer of British Columbia)}◊li{O. Brian Fjeldheim (Chief Electoral Officer of Alberta)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34845"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34845"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12636/index.do"]{R. v. Boudreault}}, 2012 SCC 56}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34582"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34582"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12655/index.do"]{R. v. St‑Onge Lamoureux}}, 2012 SCC 57}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association québécoise des avocats et avocates de la défense}◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of Ontario}◊li{Barreau du Québec}◊li{Criminal Lawyers' Association of Ontario}◊li{Criminal Trial Lawyers' Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33970"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33970"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12656/index.do"]{R. v. Dineley}}, 2012 SCC 58}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Quebec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33640"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33640"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12678/index.do"]{R. v. Nedelcu}}, 2012 SCC 59}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{Attorney General of Quebec}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34228"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34228"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12679/index.do"]{Teva Canada Ltd. v. Pfizer Canada Inc.}}, 2012 SCC 60}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canada's Research-Based Pharmaceutical Companies}◊li{Canadian Generic Pharmaceutical Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33951"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33951"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12680/index.do"]{Moore v. British Columbia (Education)}}, 2012 SCC 61}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Human Rights Commission}◊li{Attorney General of Ontario}◊li{British Columbia Human Rights Tribunal}◊li{British Columbia Teachers' Federation}◊li{Canadian Association for Community Living}◊li{Canadian Constitution Foundation}◊li{Canadian Human Rights Commission}◊li{Commission des droits de la personne et des droits de la jeunesse}◊li{Council of Canadians with Disabilities}◊li{First Nations Child and Family Caring Society}◊li{International Dyslexia Association, Ontario Branch}◊li{Justice for Children and Youth}◊li{Learning Disabilities Association of Canada}◊li{Mantioba Human Rights Commission}◊li{Ontario Human Rights Commission}◊li{Saskatchewan Human Rights Commission}◊li{West Coast Women's Legal Education and Action Fund (West Coast LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34040"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34041"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34040"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34041"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12681/index.do"]{R. v. P.D.T.}}, 2012 SCC 62}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34780"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12716/index.do"]{R. v. D.J.W.}}, 2012 SCC 63}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34623"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12717/index.do"]{Canada (Attorney General) v. Kane}}, 2012 SCC 64}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34147"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12742/index.do"]{Construction Labour Relations v. Driver Iron Inc.}}, 2012 SCC 65}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34205"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12743/index.do"]{R. v. Aucoin}}, 2012 SCC 66}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34349"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34349"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12749/index.do"]{Newfoundland and Labrador v. AbitibiBowater Inc.}}, 2012 SCC 67}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Ernst & Young}◊li{Friends of the Earth Canada}◊li{Her Majesty the Queen in Right of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33797"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33797"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12767/index.do"]{Reference re Broadcasting Regulatory Policy CRTC 2010-167 and Broadcasting Order CRTC 2010-168}}, 2012 SCC 68}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Radio-Television and Telecommunications Commission}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34231"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34231"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12768/index.do"]{R. v. Khawaja}}, 2012 SCC 69}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Groupe d'étude en droits et libertés de la Faculté de droit de l'Université Laval}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34103"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34103"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12769/index.do"]{Sriskandarajah v. United States of America}}, 2012 SCC 70}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34009"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34013"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34009"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34013"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12778/index.do"]{Professional Institute of the Public Service of Canada v. Canada (Attorney General)}}, 2012 SCC 71}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33968"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33968"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12779/index.do"]{R. v. N.S.}}, 2012 SCC 72}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Barbra Schlifer Commemorative Clinic}◊li{Barreau du Québec}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Muslim Canadian Congress}◊li{National Council of Canadian Muslims}◊li{Ontario Human Rights Commission}◊li{South Asia Legal Clinic of Ontario}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33989"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33989"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12782/index.do"]{R. v. Yumnu}}, 2012 SCC 73}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association}◊li{David Asper Centre for Constitutional Rights}◊li{Information and Privacy Commissioner of Ontario}◊li{Ontario Crown Attorneys' Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34090"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34091"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34340"]{3}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34090"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34091"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34340"]{3}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12781/index.do"]{R. v. Emms}}, 2012 SCC 74}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association}◊li{David Asper Centre for Constitutional Rights}◊li{Information and Privacy Commissioner of Ontario}◊li{Ontario Crown Attorneys' Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34087"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34087"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12780/index.do"]{R. v. Davey}}, 2012 SCC 75}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association}◊li{David Asper Centre for Constitutional Rights}◊li{Information and Privacy Commissioner of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34179"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34179"]{1}]}
}
}
}
◊heading{2013}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Appeals decided}◊th{Appeals with interveners}◊th{Appeals as of right}◊th{Appeals as of right with interventions}
}
◊tr{
◊td{73}◊td{45}◊td{11}◊td{1}
}
}
}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Citation}◊th{Criminal?}◊th['((class "as-of-right-column"))]{A.o.R.?}◊th{Interveners}◊th['((class "no-print drop-on-small-screens"))]{Details}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12805/index.do"]{R. v. Manning}}, 2013 SCC 1}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34358"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34358"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12806/index.do"]{R. v. O’Brien}}, 2013 SCC 2}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34694"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12807/index.do"]{R. v. Ryan}}, 2013 SCC 3}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Association of Elizabeth Fry Societies}◊li{Criminal Lawyers' Association of Ontario}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34272"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34272"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12824/index.do"]{R. v. Sanichar}}, 2013 SCC 4}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34720"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/10536/index.do"]{Quebec (Attorney General) v. A}}, 2013 SCC 5}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of New Brunswick}◊li{Fédération des associations de familles monoparentales et recomposées du Québec}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33990"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33990"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12844/index.do"]{Sun Indalex Finance, LLC v. United Steelworkers}}, 2013 SCC 6}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Association of Insolvency and Restructuring Professionals}◊li{Canadian Bankers Association}◊li{Canadian Federation of Pensioners}◊li{Canadian Labour Congress}◊li{Insolvency Institute of Canada}◊li{Superintendent of Financial Services}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34308"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34308"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12845/index.do"]{R. v. Bélanger}}, 2013 SCC 7}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34512"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12856/index.do"]{R. v. Blacklaws}}, 2013 SCC 8}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34889"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12864/index.do"]{R. v. Named Person B}}, 2013 SCC 9}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34053"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34053"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12865/index.do"]{R. v. Taylor}}, 2013 SCC 10}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34934"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12876/index.do"]{Saskatchewan (Human Rights Commission) v. Whatcott}}, 2013 SCC 11}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{African Canadian Legal Clinic}◊li{Alberta Human Rights Commission}◊li{Assembly of First Nations}◊li{Attorney General of Alberta}◊li{Attorney General of Saskatchewan}◊li{Canadian Bar Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Constitution Foundation}◊li{Canadian Human Rights Commission}◊li{Canadian Jewish Congress}◊li{Canadian Journalists for Free Expression}◊li{Canadian Unitarian Council}◊li{Catholic Civil Rights League}◊li{Christian Legal Fellowship}◊li{Egale Canada Human Rights Trust}◊li{Evangelical Fellowship of Canada}◊li{Faith and Freedom Alliance}◊li{Federation of Saskatchewan Indian Nations}◊li{League for Human Rights of B'nai Brith Canada}◊li{Métis Nation-Saskatchewan}◊li{Northwest Territories Human Rights Commission}◊li{Ontario Human Rights Commission}◊li{Unitarian Congregation of Saskatoon}◊li{United Church of Canada}◊li{Women's Legal Education and Action Fund (LEAF)}◊li{Yukon Human Rights Commission}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33676"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33676"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12877/index.do"]{R. v. J.F.}}, 2013 SCC 12}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34284"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34284"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12887/index.do"]{Antrim Truck Centre Ltd. v. Ontario (Transportation)}}, 2013 SCC 13}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{City of Toronto}◊li{Metrolinx}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34413"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34413"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12888/index.do"]{Manitoba Metis Federation Inc. v. Canada (Attorney General)}}, 2013 SCC 14}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Attorney General of Alberta}◊li{Attorney General of Saskatchewan}◊li{Métis Nation of Alberta}◊li{Métis Nation of Ontario}◊li{Métis National Council}◊li{Treaty One First Nations}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33880"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33880"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12904/index.do"]{R. v. Pham}}, 2013 SCC 15}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Civil Liberties Association}◊li{Canadian Council for Refugees}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34897"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34897"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12936/index.do"]{R. v. TELUS Communications Co.}}, 2013 SCC 16}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Civil Liberties Association}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34252"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34252"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12937/index.do"]{R. v. Mailhot}}, 2013 SCC 17}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34881"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12961/index.do"]{Ediger v. Johnston}}, 2013 SCC 18}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34408"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12962/index.do"]{Penner v. Niagara (Regional Police Services Board)}}, 2013 SCC 19}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Police Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Urban Alliance on Race Relations}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33959"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33959"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12992/index.do"]{R. v. Lévesque}}, 2013 SCC 20}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34417"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12991/index.do"]{R. v. Murphy}}, 2013 SCC 21}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34980"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12993/index.do"]{R. v. W.H.}}, 2013 SCC 22}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34522"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12994/index.do"]{R. v. MacIntosh}}, 2013 SCC 23}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34650"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34650"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/12995/index.do"]{R. v. G.M.}}, 2013 SCC 24}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34952"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13031/index.do"]{R. v. Levkovic}}, 2013 SCC 25}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34229"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34229"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13038/index.do"]{Behn v. Moulton Contracting Ltd.}}, 2013 SCC 26}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Forest Products Association}◊li{Attorney General of Canada}◊li{Chief Liz Logan, on behalf of herself and all other members of the Fort Nelson First Nation and the said Fort Nelson First Nation}◊li{Chief Sally Sam}◊li{Council of Forest Industries}◊li{Grand Council of Cree (Eeyou Istchee), Cree Nation Government}◊li{Maiyoo Keyoh Society}◊li{Moose Cree First Nation}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34404"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34404"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13039/index.do"]{R. v. Buzizi}}, 2013 SCC 27}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34899"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13051/index.do"]{R. v. A.D.H.}}, 2013 SCC 28}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34132"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34132"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13071/index.do"]{Daishowa‑Marubeni International Ltd. v. Canada}}, 2013 SCC 29}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Association of Petroleum Producers}◊li{Canfor Corporation}◊li{Her Majesty the Queen in Right of Alberta}◊li{International Forest Products Limited}◊li{Tolko Industries Ltd.}◊li{West Fraser Timber Co. Ltd.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34534"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34534"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13072/index.do"]{Cojocaru v. British Columbia Women’s Hospital and Health Centre}}, 2013 SCC 30}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Bar Association}◊li{Trial Lawyers Association of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34304"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34304"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13084/index.do"]{R. v. Ibanescu}}, 2013 SCC 31}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34653"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13098/index.do"]{R. v. Gauthier}}, 2013 SCC 32}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34444"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34444"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13105/index.do"]{Nishi v. Rascal Trucking Ltd.}}, 2013 SCC 33}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34510"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13106/index.do"]{Communications, Energy and Paperworkers Union of Canada, Local 30 v. Irving Pulp & Paper, Ltd.}}, 2013 SCC 34}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Federation of Labour}◊li{Alliance of Manufacturers & Exporters Canada, also known as Canadian Manufacturers & Exporters}◊li{Canadian Civil Liberties Association}◊li{Canadian Mining Association}◊li{Canadian National Railway Company}◊li{Canadian Pacific Railway Company}◊li{Communications, Energy and Paperworkers Union of Canada, Local 707}◊li{Construction Labour Relations - an Alberta Association}◊li{Construction Owners Association of Alberta}◊li{Enform Canada}◊li{Mining Association of British Columbia}◊li{Mining Association of Manitoba Inc.}◊li{Ontario Mining Association}◊li{Power Workers' Union}◊li{Quebec Mining Association}◊li{Saskatchewan Mining Association}◊li{Via Rail Canada Inc.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34473"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34473"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13136/index.do"]{R. v. Baldree}}, 2013 SCC 35}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34754"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34754"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13137/index.do"]{Agraira v. Canada (Public Safety and Emergency Preparedness)}}, 2013 SCC 36}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Canadian Arab Federation and Canadian Tamil Congress}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Council for Refugees}◊li{Maqsudi, Ahmad Daud}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34258"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34258"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13138/index.do"]{Sable Offshore Energy Inc. v. Ameron International Corp.}}, 2013 SCC 37}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34678"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13146/index.do"]{R. v. Vuradin}}, 2013 SCC 38}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35143"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13154/index.do"]{Canadian National Railway Co. v. McKercher LLP}}, 2013 SCC 39}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Bar Association}◊li{Federation of Law Societies of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34545"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34545"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13184/index.do"]{Ezokola v. Canada (Citizenship and Immigration)}}, 2013 SCC 40}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Centre for International Justice}◊li{Canadian Civil Liberties Association}◊li{Canadian Council for Refugees}◊li{David Asper Centre for Constitutional Rights}◊li{United Nations High Commissioner for Refugees}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34470"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34470"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13185/index.do"]{R. v. Youvarajah}}, 2013 SCC 41}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Criminal Lawyers' Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34732"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34732"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13186/index.do"]{Conseil scolaire francophone de la Colombie‑Britannique v. British Columbia}}, 2013 SCC 42}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des juristes d'expression française de la Colombie-Britannique}◊li{Attorney General of Ontario}◊li{Commissioner of Official Languages for Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34908"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34908"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13191/index.do"]{Ontario v. Criminal Lawyers’ Association of Ontario}}, 2013 SCC 43}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Mental Health Legal Committee}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34317"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34317"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13192/index.do"]{Marine Services International Ltd. v. Ryan Estate}}, 2013 SCC 44}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Newfoundland and Labrador}◊li{Attorney General of Nova Scotia}◊li{Attorney General of Ontario}◊li{Workers' Compensation Board of British Columbia}◊li{Workplace Health, Safety and Compensation Commission}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34429"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34429"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13231/index.do"]{Payette v. Guay inc.}}, 2013 SCC 45}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34662"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13232/index.do"]{Régie des rentes du Québec v. Canada Bread Company Ltd.}}, 2013 SCC 46}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Administrative Tribunal of Québec}◊li{Attorney General of Quebec}◊li{Thauvette, Robert}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34505"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34505"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13233/index.do"]{Divito v. Canada (Public Safety and Emergency Preparedness)}}, 2013 SCC 47}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{David Asper Centre for Constitutional Rights}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34128"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34128"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13263/index.do"]{Envision Credit Union v. Canada}}, 2013 SCC 48}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34619"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13264/index.do"]{R. v. Chehil}}, 2013 SCC 49}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34524"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34524"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13265/index.do"]{R. v. MacKenzie}}, 2013 SCC 50}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34397"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34397"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13267/index.do"]{British Columbia (Forests) v. Teal Cedar Products Ltd.}}, 2013 SCC 51}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34769"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13289/index.do"]{Castonguay Blasting Ltd. v. Ontario (Environment)}}, 2013 SCC 52}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Environmental Law Association}◊li{Lake Ontario Waterkeeper}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34816"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34816"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13290/index.do"]{Cuthbertson v. Rasouli}}, 2013 SCC 53}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{ARCH Disability Law Centre}◊li{Advocacy Centre for the Elderly}◊li{Canadian Association of Critical Care Nurses}◊li{Canadian Critical Care Society}◊li{Consent and Capacity Board}◊li{Euthanasia Prevention Coalition}◊li{Evangelical Fellowship of Canada}◊li{HIV & AIDS Legal Clinic Ontario}◊li{Mental Health Legal Committee}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34362"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34362"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13307/index.do"]{R. v. R.L.}}, 2013 SCC 54}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34871"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13308/index.do"]{R. v. Cairney}}, 2013 SCC 55}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34848"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13309/index.do"]{R. v. Pappas}}, 2013 SCC 56}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34951"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13320/index.do"]{Pro‑Sys Consultants Ltd. v. Microsoft Corporation}}, 2013 SCC 57}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34282"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34282"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13319/index.do"]{Sun‑Rype Products Ltd. v. Archer Daniels Midland Company}}, 2013 SCC 58}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Canadian Chamber of Commerce}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34283"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34283"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13318/index.do"]{Infineon Technologies AG v. Option consommateurs}}, 2013 SCC 59}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Federation of Independent Grocers}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34617"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34617"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13327/index.do"]{R. v. Vu}}, 2013 SCC 60}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34687"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34687"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13328/index.do"]{R. v. Hay}}, 2013 SCC 61}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=33536"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13334/index.do"]{Alberta (Information and Privacy Commissioner) v. United Food and Commercial Workers, Local 401}}, 2013 SCC 62}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Federation of Labour}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Coalition of BC Businesses}◊li{Information and Privacy Commissioner of British Columbia}◊li{Information and Privacy Commissioner of Ontario}◊li{Merit Canada}◊li{Privacy Commissioner of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34890"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34890"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13341/index.do"]{La Souveraine, Compagnie d’assurance générale v. Autorité des marchés financiers}}, 2013 SCC 63}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34699"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13342/index.do"]{Katz Group Canada Inc. v. Ontario (Health and Long‑Term Care)}}, 2013 SCC 64}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34647"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34649"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13363/index.do"]{Quebec (Agence du revenu) v. Services Environnementaux AES inc.}}, 2013 SCC 65}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34235"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34393"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34235"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34393"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13364/index.do"]{Amaratunga v. Northwest Atlantic Fisheries Organization}}, 2013 SCC 66}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34501"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34501"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13370/index.do"]{McLean v. British Columbia (Securities Commission)}}, 2013 SCC 67}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Financial Advisors Association of Canada}◊li{Ontario Securities Commission}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34593"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34593"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13371/index.do"]{R. v. McRae}}, 2013 SCC 68}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34743"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13377/index.do"]{AIC Limited v. Fischer}}, 2013 SCC 69}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34738"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13378/index.do"]{IBM Canada Limited v. Waterman}}, 2013 SCC 70}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34472"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13388/index.do"]{Wood v. Schaeffer}}, 2013 SCC 71}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Police Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Police Association of Ontario}◊li{Richard Rosenthal, Chief Civilian Director of the Independent Investigations Office of British Columbia}◊li{Urban Alliance on Race Relations}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34621"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34621"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13389/index.do"]{Canada (Attorney General) v. Bedford}}, 2013 SCC 72}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{AWCEP Asian Women for Equality Society, operating as Asian Women Coalition Ending Prostitution}◊li{Aboriginal Legal Service of Toronto Inc.}◊li{Action ontarienne contre la violence faite aux femmes}◊li{Attorney General of Quebec}◊li{British Columbia Centre for Excellence in HIV/AIDS}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Elizabeth Fry Societies}◊li{Canadian Association of Sexual Assault Centres}◊li{Canadian HIV/AIDS Legal Network}◊li{Catholic Civil Rights Leagues}◊li{Christian Legal Fellowship}◊li{Concertation des luttes contre l'exploitation sexuelle}◊li{David Asper Centre for Constitutional Rights}◊li{Downtown Eastside Sex Workers United Against Violence}◊li{Evangelical Fellowship of Canada}◊li{HIV & AIDS Legal Clinic Ontario}◊li{Institut Simone de Beauvoir}◊li{Native Women's Association of Canada}◊li{PACE Society}◊li{Pivot Legal Society}◊li{REAL Women of Canada}◊li{Regroupement québécois des centres d'aide et de lutte contre les agressions à caractère sexuel}◊li{Secretariat of the Joint United Nations Programme on HIV/AIDS}◊li{Vancouver Rape Relief Society}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34788"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34788"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13390/index.do"]{Cinar Corporation v. Robinson}}, 2013 SCC 73}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{3918203 Canada Inc.}◊li{BBC Worldwide Television}◊li{Charest, Hélène}◊li{Christophe Izard}◊li{Davin, Christian}◊li{Films Cinar Inc.}◊li{France Animation S.A.}◊li{Izard, Christophe}◊li{McRaw Holdings Inc.}◊li{Music Canada}◊li{Plummer-Andrews, Theresa}◊li{RTV Family Entertainment AG}◊li{Ravensburger Film + TV GmbH}◊li{Ronald A. Weinberg, in his capacity as sole liquidator of the succession of the late Micheline Charest}◊li{Videal Gesellschaft Zur Hertellung Von Audiovisuellen Produkten MHB}◊li{Weinberg, Ronald A.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34466"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34467"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34468"]{3}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34469"]{4}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34466"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34467"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34468"]{3}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34469"]{4}]}
}
}
}
◊heading{2014}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Appeals decided}◊th{Appeals with interveners}◊th{Appeals as of right}◊th{Appeals as of right with interventions}
}
◊tr{
◊td{77}◊td{48}◊td{24}◊td{7}
}
}
}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Citation}◊th{Criminal?}◊th['((class "as-of-right-column"))]{A.o.R.?}◊th{Interveners}◊th['((class "no-print drop-on-small-screens"))]{Details}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13409/index.do"]{Vivendi Canada Inc. v. Dell’Aniello}}, 2014 SCC 1}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alliance of Manufacturers & Exporters Canada, also known as Canadian Manufacturers & Exporters}◊li{Canadian Chamber of Commerce}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34800"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34800"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13423/index.do"]{R. v. W.E.B.}}, 2014 SCC 2}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35089"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13410/index.do"]{R. v. MacDonald}}, 2014 SCC 3}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34914"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34914"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13424/index.do"]{R. v. Davis}}, 2014 SCC 4}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35327"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13425/index.do"]{R. v. James}}, 2014 SCC 5}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35373"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13426/index.do"]{R. v. Auclair}}, 2014 SCC 6}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35372"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35372"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13427/index.do"]{Hryniak v. Mauldin}}, 2014 SCC 7}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Bar Association}◊li{Ontario Trial Lawyers Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34641"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34641"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13428/index.do"]{Bruno Appliance and Furniture, Inc. v. Hryniak}}, 2014 SCC 8}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{Attorney General of Ontario}◊li{Canadian Bar Association}◊li{Ontario Trial Lawyers Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34645"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34645"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13430/index.do"]{R. v. Koczab}}, 2014 SCC 9}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35411"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13429/index.do"]{R. v. Yelle}}, 2014 SCC 10}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35361"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13444/index.do"]{Telecommunications Employees Association of Manitoba Inc. v. Manitoba Telecom Services Inc.}}, 2014 SCC 11}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34763"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13445/index.do"]{A.I. Enterprises Ltd. v. Bram Enterprises Ltd.}}, 2014 SCC 12}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34863"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34863"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13461/index.do"]{Bernard v. Canada (Attorney General)}}, 2014 SCC 13}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Federation of Labour}◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Canadian Association of Counsel to Employers}◊li{Canadian Civil Liberties Association}◊li{Canadian Constitution Foundation}◊li{Coalition of BC Businesses}◊li{Merit Canada}◊li{Privacy Commissioner of Canada}◊li{Public Service Alliance of Canada}◊li{Public Service Labour Relations Board}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34819"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34819"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13485/index.do"]{R. v. Flaviano}}, 2014 SCC 14}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35488"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13486/index.do"]{R. v. Sekhon}}, 2014 SCC 15}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35180"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13487/index.do"]{R. v. Babos}}, 2014 SCC 16}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34824"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13504/index.do"]{R. v. Waite}}, 2014 SCC 17}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35499"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13503/index.do"]{R. v. Hogg}}, 2014 SCC 18}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35504"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13511/index.do"]{R. v. Hutchinson}}, 2014 SCC 19}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian HIV/AIDS Legal Network}◊li{HIV & AIDS Legal Clinic Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35176"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35176"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13543/index.do"]{Canada (Attorney General) v. Whaling}}, 2014 SCC 20}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35024"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35024"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13544/index.do"]{Reference re Supreme Court Act, ss. 5 and 6}}, 2014 SCC 21}◊td{}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Alice Desjardins}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Canadian Association of Provincial Court Judges}◊li{Constitutional Rights Centre Inc.}◊li{Décary, Robert}◊li{Galati, Rocco}◊li{Gilles Létourneau}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35586"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35586"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13561/index.do"]{R. v. Vokurka}}, 2014 SCC 22}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35510"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13560/index.do"]{R. v. Leinen}}, 2014 SCC 23}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35531"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13562/index.do"]{Mission Institution v. Khela}}, 2014 SCC 24}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Elizabeth Fry Societies}◊li{Canadian Civil Liberties Association}◊li{John Howard Society of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34609"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34609"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13563/index.do"]{Martin v. Alberta (Workers’ Compensation Board)}}, 2014 SCC 25}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Commission des normes, de l'équité, de la santé et de la sécurité du travail}◊li{Workers' Compensation Board of British Columbia}◊li{Workers' Compensation Board of Nova Scotia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35052"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35052"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13586/index.do"]{R. v. Summers}}, 2014 SCC 26}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Directeur des poursuites criminelles et pénales du Québec}◊li{John Howard Society of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35339"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35339"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13587/index.do"]{R. v. Carvery}}, 2014 SCC 27}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35115"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35115"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13588/index.do"]{R. v. Clarke}}, 2014 SCC 28}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35487"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13612/index.do"]{Peracomo Inc. v. TELUS Communications Co.}}, 2014 SCC 29}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34991"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13615/index.do"]{R. v. Jackson}}, 2014 SCC 30}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35622"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13613/index.do"]{Ontario (Community Safety and Correctional Services) v. Ontario (Information and Privacy Commissioner)}}, 2014 SCC 31}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Information Commissioner of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34949"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34949"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13614/index.do"]{Reference re Senate Reform}}, 2014 SCC 32}◊td{}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Manitoba}◊li{Attorney General of New Brunswick}◊li{Attorney General of Newfoundland and Labrador}◊li{Attorney General of Nova Scotia}◊li{Attorney General of Nunavut}◊li{Attorney General of Ontario}◊li{Attorney General of Prince Edward Island}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Attorney General of the North West Territories}◊li{Cools, Anne C.}◊li{Fédération des communautés francophones et acadienne du Canada}◊li{Joyal, P.C., Serge}◊li{Société de l'Acadie du Nouveau-Brunswick Inc.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35203"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35203"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13620/index.do"]{Dionne v. Commission scolaire des Patriotes}}, 2014 SCC 33}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Commission des normes, de l'équité, de la santé et de la sécurité du travail}◊li{Fédération des syndicats de l'enseignement}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34854"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34854"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13621/index.do"]{Immeubles Jacques Robitaille inc. v. Québec (City)}}, 2014 SCC 34}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35295"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13632/index.do"]{Union Carbide Canada Inc. v. Bombardier Inc.}}, 2014 SCC 35}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Arbitration Place Inc.}◊li{Attorney General of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35008"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35008"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13633/index.do"]{John Doe v. Ontario (Finance)}}, 2014 SCC 36}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{British Columbia Freedom of Information and Privacy Association}◊li{Canadian Civil Liberties Association}◊li{Information and Privacy Commissioner of Alberta}◊li{Information and Privacy Commissioner of British Columbia}◊li{Information and Privacy Commissioner of Prince Edward Island}◊li{Nova Scotia Information and Privacy Commissioner [Review Officer]}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34828"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34828"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13643/index.do"]{Canada (Citizenship and Immigration) v. Harkat}}, 2014 SCC 37}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Bar Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Council for Refugees}◊li{Canadian Council of Criminal Defence Lawyers}◊li{Criminal Lawyers' Association of Ontario}◊li{International Civil Liberties Monitoring Group}◊li{National Council of Canadian Muslims}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34884"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34884"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13644/index.do"]{Stubicar v. Canada}}, 2014 SCC 38}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35368"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13663/index.do"]{McCormick v. Fasken Martineau DuMoulin LLP}}, 2014 SCC 39}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Human Rights Commission}◊li{BDO Canada LLP}◊li{British Columbia Human Rights Tribunal}◊li{Canadian Human Rights Commission}◊li{Deloitte LLP}◊li{Ernst & Young}◊li{Grant Thornton LLP}◊li{KPMG LLP}◊li{Ontario Human Rights Commission}◊li{PricewaterhouseCoopers LLP}◊li{Young Bar Association of Montreal}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34997"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34997"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/13664/index.do"]{Canadian National Railway Co. v. Canada (Attorney General)}}, 2014 SCC 40}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35145"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14222/index.do"]{R. v. Anderson}}, 2014 SCC 41}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{Attorney General of British Columbia}◊li{Attorney General of New Brunswick}◊li{Attorney General of Ontario}◊li{David Asper Centre for Constitutional Rights}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35246"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35246"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14232/index.do"]{Canadian Artists’ Representation v. National Gallery of Canada}}, 2014 SCC 42}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Screenwriters Collection Society}◊li{SODRAC 2003 Inc.}◊li{Société du droit de reproduction des auteurs compositeurs et éditeurs du Canada}◊li{Writers Guild of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35353"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35353"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14233/index.do"]{R. v. Spencer}}, 2014 SCC 43}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Ontario}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}◊li{Privacy Commissioner of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34644"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34644"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14246/index.do"]{Tsilhqot’in Nation v. British Columbia}}, 2014 SCC 44}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{Assembly of First Nations}◊li{Association for Mineral Exploration British Columbia}◊li{Attorney General of Alberta}◊li{Attorney General of Manitoba}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Business Council of British Columbia}◊li{Chilko Resorts}◊li{Coalition of Union of B.C. Indian Chiefs}◊li{Coast Forest Products Association}◊li{Community Association and Council of Canadians}◊li{Council of Forest Industries}◊li{Council of the Haida Nation}◊li{First Nations Summit}◊li{Gitanyow Hereditary Chiefs}◊li{Gitxaala Nation}◊li{Hul'qumi'num Treaty Group}◊li{Indigenous Bar Association in Canada}◊li{Kwakiutl First Nation}◊li{Mining Association of British Columbia}◊li{Office of the Wet'suwet'en Chiefs}◊li{Okanagan Nation Alliance}◊li{Shuswap Nation Tribal Council and their member communities, Okanagan, Adams Lake, Neskonlith and Splatsin Indian Bands}◊li{Snuneymuxw First Nation}◊li{Te'Mexw Nations}◊li{Tsartlip First Nation}◊li{Tsawout First Nation}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34986"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34986"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14247/index.do"]{United Food and Commercial Workers, Local 503 v. Wal‑Mart Canada Corp.}}, 2014 SCC 45}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alliance of Manufacturers & Exporters Canada, also known as Canadian Manufacturers & Exporters}◊li{Canadian Association of Counsel to Employers}◊li{Confédération des syndicats nationaux}◊li{Conseil du patronat du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34920"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34920"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14272/index.do"]{R. v. Quesnelle}}, 2014 SCC 46}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Barbra Schlifer Commemorative Clinic}◊li{Canadian Association of Chiefs of Police}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35390"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35390"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14273/index.do"]{R. v. Sipos}}, 2014 SCC 47}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35310"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35310"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14274/index.do"]{Grassy Narrows First Nation v. Ontario (Natural Resources)}}, 2014 SCC 48}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Manitoba}◊li{Attorney General of Saskatchewan}◊li{Beaver Lake Cree Nation}◊li{Big Grassy First Nation}◊li{Blood Tribe}◊li{Cowichan Tribes, represented by Chief William Charles Seymour, on his own behalf and on behalf of the members of Cowichan Tribes}◊li{Ermineskin Cree Nation}◊li{Fort McKay First Nation}◊li{Grand Council of Treaty #3}◊li{Lac Seul First Nation}◊li{Métis Nation of Ontario}◊li{Naotkamegwanning First Nation}◊li{National Indian Brotherhood}◊li{Ochiichagwe’Babigo’Ining First Nation}◊li{Ojibways of Onigaming First Nation}◊li{Sandy Lake First Nation}◊li{Siksika Nation}◊li{Te'Mexw Nations}◊li{Whitefish Lake First Nation #128}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35379"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35379"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14275/index.do"]{Canada (Attorney General) v. Confédération des syndicats nationaux}}, 2014 SCC 49}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35124"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14276/index.do"]{R. v. Taylor}}, 2014 SCC 50}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Civil Liberties Association}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35609"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35609"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14287/index.do"]{Quebec (Commission des normes du travail) v. Asphalte Desjardins inc.}}, 2014 SCC 51}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35375"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14301/index.do"]{R. v. Hart}}, 2014 SCC 52}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des avocats de la défense de Montréal}◊li{Association in Defence of the Wrongly Convicted}◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Directeur des poursuites criminelles et pénales du Québec}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35049"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35049"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14302/index.do"]{Sattva Capital Corp. v. Creston Moly Corp.}}, 2014 SCC 53}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{BCICAC Foundation}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35026"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35026"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14351/index.do"]{R. v. Mian}}, 2014 SCC 54}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35132"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35132"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14352/index.do"]{Bank of Montreal v. Marcotte}}, 2014 SCC 55}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Canadian Bankers Association}◊li{Président de l'Office de la protection du consommateur}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35009"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35009"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14354/index.do"]{Amex Bank of Canada v. Adams}}, 2014 SCC 56}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Canadian Bankers Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35033"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35033"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14353/index.do"]{Marcotte v. Fédération des caisses Desjardins du Québec}}, 2014 SCC 57}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Président de l'Office de la protection du consommateur}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35018"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35018"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14355/index.do"]{R. v. Mack}}, 2014 SCC 58}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35093"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35093"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14375/index.do"]{Trial Lawyers Association of British Columbia v. British Columbia (Attorney General)}}, 2014 SCC 59}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{Attorney General of Alberta}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{David Asper Centre for Constitutional Rights}◊li{West Coast Women's Legal Education and Action Fund (West Coast LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35315"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35315"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14376/index.do"]{R. v. Conception}}, 2014 SCC 60}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Quebec}◊li{Criminal Lawyers' Association of Ontario}◊li{Mental Health Legal Committee}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34930"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34930"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14383/index.do"]{R. v. Steele}}, 2014 SCC 61}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35364"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35364"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14384/index.do"]{Kazemi Estate v. Islamic Republic of Iran}}, 2014 SCC 62}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Bar Association}◊li{Canadian Centre for International Justice}◊li{Canadian Civil Liberties Association}◊li{Canadian Lawyers for International Human Rights}◊li{David Asper Centre for Constitutional Rights}◊li{Iran Human Rights Documentation Center}◊li{Redress Trust Ltd.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35034"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35034"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14385/index.do"]{R. v. Mohamed}}, 2014 SCC 63}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35644"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14400/index.do"]{R. v. Bouchard}}, 2014 SCC 64}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35690"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14401/index.do"]{R. v. Lepine}}, 2014 SCC 65}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35665"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14399/index.do"]{Imperial Oil v. Jacques}}, 2014 SCC 66}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{134553 Canada Inc.}◊li{2311-5959 Québec Inc., Gaz-O-Pneus Inc.}◊li{2429-7822 Québec Inc.}◊li{2627-3458 Québec Inc.}◊li{2944-4841 Québec Inc.}◊li{9010-1460 Québec Inc.}◊li{9011-4653 Québec Inc., Pétroles Remay Inc., Variétés Jean Yves Plourde Inc. and 9016-8360 Québec Inc.}◊li{9029-6815 Québec Inc.}◊li{9038-6095 Québec Inc.}◊li{9083-0670 Québec Inc., Gestion Ghislain Lallier Inc.}◊li{9098-0111 Québec Inc.}◊li{9142-0935 Québec Inc., 9131-4716 Québec Inc., Groupe Denis Mongeau Inc.}◊li{Alimentation Couche-Tard Inc.}◊li{André Bilodeau}◊li{Angers, Guy}◊li{Armand Pouliot}◊li{Attorney General of Ontario}◊li{Aubut, Carole}◊li{Benoît, France}◊li{Bonin, Céline}◊li{Bourassa, Pierre}◊li{Bédard, Richard}◊li{C. Lagrandeur et fils Inc.}◊li{Carol Lehoux}◊li{Claude Bédard}◊li{Coop fédérée}◊li{Couche-Tard Inc.}◊li{Couturier, Luc}◊li{Daniel Drouin}◊li{Dépan-Escompte Couche-Tard Inc.}◊li{Dépanneur Magog-Orford Inc}◊li{Forget, Luc}◊li{Garage Jacques Robert Inc.}◊li{Garage Luc Fecteau et fils Inc.}◊li{Gary Neiderer}◊li{Gestion Astral Inc.}◊li{Global Fuels (Quebec) Inc.}◊li{Gérald Groulx Station Service Inc.}◊li{Irving Oil Inc. / Irving Oil Operations Ltd.}◊li{Julie Roberge}◊li{Leblond, Daniel}◊li{Lise Delisle}◊li{Michaud, Richard}◊li{Olco Petroleum Group Inc.}◊li{Ouellet, Jacques}◊li{Payette, Christian}◊li{Philippe Gosselin & Associés Ltd}◊li{Provigo Distribution Inc.}◊li{Pétroles Cadrin Inc.}◊li{Pétroles Global (Québec) inc.}◊li{Pétroles Therrien Inc.}◊li{Roberge s.e.n.c.}◊li{Robert Beaurivage}◊li{Robert Murphy}◊li{Services Autogarde D.D. Inc.}◊li{Société coopérative agricole des Bois-Francs}◊li{Station-Service Jacques Blais Inc.}◊li{Station-Service Pouliot}◊li{Stéphane Grant}◊li{Sylvie Fréchette}◊li{Ultramar Ltd}◊li{Universy Galt Service Inc.}◊li{Valérie Houde}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35226"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35231"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35226"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35231"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14418/index.do"]{Thibodeau v. Air Canada}}, 2014 SCC 67}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Commissioner of Official Languages for Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35100"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35100"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14419/index.do"]{Febles v. Canada (Citizenship and Immigration)}}, 2014 SCC 68}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Civil Liberties Association}◊li{Canadian Council for Refugees}◊li{United Nations High Commissioner for Refugees}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35215"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35215"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14429/index.do"]{R. v. Dunn}}, 2014 SCC 69}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35599"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14440/index.do"]{British Columbia Teachers' Federation v. British Columbia Public School Employers' Association}}, 2014 SCC 70}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{West Coast Women's Legal Education and Action Fund (West Coast LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35623"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35623"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14438/index.do"]{Bhasin v. Hrynew}}, 2014 SCC 71}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35380"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14439/index.do"]{Wakeling v. United States of America}}, 2014 SCC 72}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Information and Privacy Commissioner of Ontario}◊li{Privacy Commissioner of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35072"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35072"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14447/index.do"]{R. v. Wills}}, 2014 SCC 73}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35804"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14500/index.do"]{R. v. Day}}, 2014 SCC 74}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35822"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14501/index.do"]{R. v. Wilcox}}, 2014 SCC 75}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian HIV/AIDS Legal Network}◊li{Coalition des organismes communautaires québécois de lutte contre le sida}◊li{HIV & AIDS Legal Clinic Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35758"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35758"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14503/index.do"]{R. v. MacLeod}}, 2014 SCC 76}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35957"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14502/index.do"]{R. v. Fearon}}, 2014 SCC 77}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Chiefs of Police}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association}◊li{Criminal Trial Lawyers' Association (Alberta)}◊li{Director of Public Prosecutions of Canada}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35298"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35298"]{1}]}
}
}
}
◊heading{2015}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Appeals decided}◊th{Appeals with interveners}◊th{Appeals as of right}◊th{Appeals as of right with interventions}
}
◊tr{
◊td{66}◊td{41}◊td{15}◊td{5}
}
}
}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Citation}◊th{Criminal?}◊th['((class "as-of-right-column"))]{A.o.R.?}◊th{Interveners}◊th['((class "no-print drop-on-small-screens"))]{Details}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14577/index.do"]{Mounted Police Association of Ontario v. Canada (Attorney General)}}, 2015 SCC 1}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des membres de la police montée du Québec}◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Attorney General of Saskatchewan}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Labour Congress}◊li{Canadian Police Association}◊li{Confédération des syndicats nationaux}◊li{Mounted Police Members' Legal Fund}◊li{Public Service Alliance of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34948"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=34948"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14576/index.do"]{Meredith v. Canada (Attorney General)}}, 2015 SCC 2}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Attorney General of Saskatchewan}◊li{Canadian Labour Congress}◊li{Canadian Union of Public Employees, Local 675}◊li{Confédération des syndicats nationaux}◊li{Professional Institute of the Public Service of Canada}◊li{Public Service Alliance of Canada}◊li{Union of Canadian Correctional Officers}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35424"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35424"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14603/index.do"]{Tervita Corp. v. Canada (Commissioner of Competition)}}, 2015 SCC 3}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35314"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14610/index.do"]{Saskatchewan Federation of Labour v. Saskatchewan}}, 2015 SCC 4}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Air Canada}◊li{Alberta Federation of Labour}◊li{Alberta Union of Provincial Employees}◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Newfoundland and Labrador}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{British Columbia Teachers' Federation}◊li{Canada Post Corporation}◊li{Canadian Constitution Foundation}◊li{Canadian Employers Council}◊li{Canadian Labour Congress}◊li{Canadian Union of Postal Workers}◊li{Confédération des syndicats nationaux}◊li{Conseil du patronat du Québec}◊li{Cypress Regional Health Authority}◊li{Five Hills Regional Health Authority}◊li{Heartland Regional Health Authority}◊li{Hospital Employees' Union}◊li{International Association of Machinists and Aerospace workers}◊li{National Union of Public and General Employees}◊li{Pilots' Association}◊li{Prince Albert Parkland Regional Health Authority}◊li{Professional Institute of the Public Service of Canada}◊li{Public Service Alliance of Canada}◊li{Regina Qu'Appelle Regional Health Authority}◊li{SEIU-West}◊li{Saskatchewan Union of Nurses}◊li{Saskatoon Regional Health Authority}◊li{Sunrise Regional Health Authority}◊li{United Nurses of Alberta}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35423"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35423"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14637/index.do"]{Carter v. Canada (Attorney General)}}, 2015 SCC 5}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alliance Of People With Disabilities Who Are Supportive of Legal Assisted Dying Society}◊li{Association for Reformed Political Action (ARPA) Canada}◊li{Association québécoise pour le droit de mourir dans la dignité}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Canadian Association for Community Living}◊li{Canadian Civil Liberties Association}◊li{Canadian Federation of Catholic Physicians' Societies}◊li{Canadian HIV/AIDS Legal Network}◊li{Canadian Medical Association}◊li{Canadian Unitarian Council}◊li{Catholic Civil Rights League}◊li{Catholic Health Alliance of Canada}◊li{Christian Legal Fellowship}◊li{Christian Medical and Dental Society of Canada}◊li{Council of Canadians with Disabilities}◊li{Criminal Lawyers' Association of Ontario}◊li{Dying with Dignity}◊li{Euthanasia Prevention Coalition}◊li{Euthanasia Prevention Coalition - British Columbia}◊li{Evangelical Fellowship of Canada}◊li{Faith and Freedom Alliance}◊li{Farewell Foundation For The Right To Die}◊li{HIV & AIDS Legal Clinic Ontario}◊li{Physicians' Alliance Against Euthanasia}◊li{Protection of Conscience Project}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35591"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35591"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14638/index.do"]{R. v. Goleski}}, 2015 SCC 6}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35862"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35862"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14639/index.do"]{Canada (Attorney General) v. Federation of Law Societies of Canada}}, 2015 SCC 7}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{Barreau du Québec}◊li{Canadian Bar Association}◊li{Canadian Civil Liberties Association}◊li{Chambre des notaires du Québec}◊li{Criminal Lawyers' Association of Ontario}◊li{Law Society of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35399"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35399"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14645/index.do"]{R. v. Perrone}}, 2015 SCC 8}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36021"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14676/index.do"]{R. v. Grant}}, 2015 SCC 9}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35664"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14677/index.do"]{Potter v. New Brunswick Legal Aid Services Commission}}, 2015 SCC 10}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35422"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14692/index.do"]{R. v. Araya}}, 2015 SCC 11}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35669"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14703/index.do"]{Loyola High School v. Quebec (Attorney General)}}, 2015 SCC 12}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association de la communauté copte orthodoxe du grand Montréal}◊li{Association des parents catholiques du Québec}◊li{Association of Christians Educators and Schools Canada}◊li{Canadian Civil Liberties Association}◊li{Canadian Council of Christian Charities}◊li{Catholic Civil Rights League}◊li{Christian Legal Fellowship}◊li{Corporation Archiépiscopale Catholique Romaine de Montréal}◊li{Evangelical Fellowship of Canada}◊li{Faith and Freedom Alliance}◊li{Faith, Fealty & Creed Society}◊li{Home School Legal Defence Association of Canada}◊li{Seventh-Day Adventist Church in Canada}◊li{Seventh-day Adventist Church - Quebec Conference}◊li{World Sikh Organization of Canada}◊li{l'Archevêque Catholique Romain de Montréal}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35201"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35201"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14705/index.do"]{R. v. Sanghera}}, 2015 SCC 13}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36017"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/14713/index.do"]{Quebec (Attorney General) v. Canada (Attorney General)}}, 2015 SCC 14}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canada's National Firearms Association}◊li{Coalition pour le contrôle des armes}◊li{Contrôleur des armes à feu}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35448"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35448"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15272/index.do"]{R. v. Nur}}, 2015 SCC 15}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{African Canadian Legal Clinic}◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canada's National Firearms Association}◊li{Canadian Association for Community Living}◊li{Canadian Bar Association}◊li{Canadian Civil Liberties Association}◊li{John Howard Society of Canada}◊li{Pivot Legal Society}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35678"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35684"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35678"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35684"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15288/index.do"]{Mouvement laïque québécois v. Saguenay (City)}}, 2015 SCC 16}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des parents catholiques du Québec}◊li{Canadian Civil Liberties Association}◊li{Canadian Secular Alliance}◊li{Catholic Civil Rights League}◊li{Evangelical Fellowship of Canada}◊li{Faith and Freedom Alliance}◊li{Human Rights Tribunal}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35496"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35496"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15289/index.do"]{Carey v. Laiken}}, 2015 SCC 17}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35597"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15290/index.do"]{Theratechnologies Inc. v. 121851 Canada Inc.}}, 2015 SCC 18}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Mouvement d'Éducation et de défense des Actionnaires}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35550"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35550"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15303/index.do"]{Zurich Insurance Co. v. Chubb Insurance Co. of Canada}}, 2015 SCC 19}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36002"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15304/index.do"]{Sanofi-Aventis v. Apotex Inc.}}, 2015 SCC 20}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canada's Research-Based Pharmaceutical Companies}◊li{Canadian Generic Pharmaceutical Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35886"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35886"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15305/index.do"]{Association des parents de l’école Rose‑des‑vents v. British Columbia (Education)}}, 2015 SCC 21}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Saskatchewan}◊li{Attorney General of the North West Territories}◊li{Attorney General of the Yukon Territory}◊li{Commission scolaire francophone des Territoires du Nord-Ouest}◊li{Commission scolaire francophone du Yukon}◊li{Commissioner of Official Languages for Canada}◊li{Conseil des écoles fransaskoises}◊li{Fédération nationale des conseils scolaires francophones}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35619"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35619"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15308/index.do"]{Quebec (Attorney General) v. Canada (Attorney General)}}, 2015 SCC 22}◊td{}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Association of the Tax Court of Canada Judges}◊li{Attorney General of Ontario}◊li{Canadian Association of Provincial Court Judges}◊li{Cree Nation Government}◊li{Grand Council of Cree (Eeyou Istchee)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36231"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36231"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15328/index.do"]{White Burgess Langille Inman v. Abbott and Haliburton Co.}}, 2015 SCC 23}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35492"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35492"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15329/index.do"]{Henry v. British Columbia (Attorney General)}}, 2015 SCC 24}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association in Defence of the Wrongly Convicted}◊li{Attorney General of Alberta}◊li{Attorney General of Manitoba}◊li{Attorney General of New Brunswick}◊li{Attorney General of Newfoundland and Labrador}◊li{Attorney General of Nova Scotia}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Crown Counsel}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association}◊li{David Asper Centre for Constitutional Rights}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35745"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35745"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15357/index.do"]{Yukon Francophone School Board, Education Area #23 v. Yukon (Attorney General)}}, 2015 SCC 25}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Attorney General of the North West Territories}◊li{Commissioner of Official Languages for Canada}◊li{Conseil scolaire francophone de la Colombie-Britannique}◊li{Fédération des communautés francophones et acadienne du Canada}◊li{Fédération des parents francophones de Colombie-Britannique}◊li{Fédération des parents francophones de l'Alberta}◊li{Fédération nationale des conseils scolaires francophones}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35823"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35823"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15359/index.do"]{Bowden Institution v. Khadr}}, 2015 SCC 26}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36081"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36081"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15358/index.do"]{R. v. St-Cloud}}, 2015 SCC 27}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35626"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35626"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15373/index.do"]{R. v. Kokopenace}}, 2015 SCC 28}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{Advocates' Society}◊li{Canadian Association of Elizabeth Fry Societies}◊li{David Asper Centre for Constitutional Rights}◊li{Native Women's Association of Canada}◊li{Nishnawbe Aski Nation}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35475"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35475"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15374/index.do"]{R. v. Barabash}}, 2015 SCC 29}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Beyond Borders}◊li{Canadian Centre for Child Protection Inc.}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35977"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36064"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35977"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36064"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15383/index.do"]{Kahkewistahaw First Nation v. Taypotat}}, 2015 SCC 30}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35518"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15384/index.do"]{Canada (Attorney General) v. Barnaby}}, 2015 SCC 31}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35548"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15385/index.do"]{Caplin v. Canada (Justice)}}, 2015 SCC 32}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35527"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15397/index.do"]{R. v. Tatton}}, 2015 SCC 33}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35866"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35866"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15403/index.do"]{R. v. Smith}}, 2015 SCC 34}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Canadian AIDS Society}◊li{Canadian Civil Liberties Association}◊li{Canadian HIV/AIDS Legal Network}◊li{Criminal Lawyers' Association of Ontario}◊li{HIV & AIDS Legal Clinic Ontario}◊li{Santé Cannabis}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36059"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36059"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15406/index.do"]{Hinse v. Canada (Attorney General)}}, 2015 SCC 35}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association in Defence of the Wrongly Convicted}◊li{Centre PRO BONO Québec}◊li{Pro Bono Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35613"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35613"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15416/index.do"]{Société en commandite Place Mullins v. Services immobiliers Diane Bisson inc.}}, 2015 SCC 36}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35461"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15438/index.do"]{Strickland v. Canada (Attorney General)}}, 2015 SCC 37}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35808"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15456/index.do"]{R. v. Rodgerson}}, 2015 SCC 38}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35947"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15471/index.do"]{Quebec (Commission des droits de la personne et des droits de la jeunesse) v. Bombardier Inc. (Bombardier Aerospace Training Center)}}, 2015 SCC 39}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Civil Liberties Association}◊li{Canadian Human Rights Commission}◊li{Canadian Muslim Lawyers Association}◊li{Center for Research-Action on Race Relations}◊li{National Council of Canadian Muslims}◊li{South Asia Legal Clinic of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35625"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35625"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15477/index.do"]{R. v. Simpson}}, 2015 SCC 40}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{City of Montreal}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35971"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35971"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15478/index.do"]{Guindon v. Canada}}, 2015 SCC 41}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Canadian Constitution Foundation}◊li{Chartered Professional Accountants of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35519"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35519"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15497/index.do"]{Chevron Corp. v. Yaiguaje}}, 2015 SCC 42}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Centre for International Justice}◊li{David Asper Centre for Constitutional Rights}◊li{Justice and Corporate Accountability Project}◊li{MiningWatch Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35682"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35682"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15511/index.do"]{Stuart Olson Dominion Construction Ltd. v. Structal Heavy Steel}}, 2015 SCC 43}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35777"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15517/index.do"]{Ontario (Energy Board) v. Ontario Power Generation Inc.}}, 2015 SCC 44}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ontario Education Services Corporation}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35506"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35506"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15516/index.do"]{ATCO Gas and Pipelines Ltd. v. Alberta (Utilities Commission)}}, 2015 SCC 45}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35624"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15550/index.do"]{Goodwin v. British Columbia (Superintendent of Motor Vehicles)}}, 2015 SCC 46}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Registrar of Motor Vehicle Services}◊li{Attorney General of Alberta}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{British Columbia Civil Liberties Association}◊li{Criminal Defence Lawyers Association (Calgary)}◊li{Criminal Lawyers' Association of Ontario}◊li{Criminal Trial Lawyers' Association (Alberta)}◊li{Insurance Bureau of Canada}◊li{Mothers Against Drunk Driving Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35864"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35864"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15549/index.do"]{Wilson v. British Columbia (Superintendent of Motor Vehicles)}}, 2015 SCC 47}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35959"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15571/index.do"]{R. v. M.J.B.}}, 2015 SCC 48}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36421"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15604/index.do"]{R. v. Neville}}, 2015 SCC 49}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36412"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15621/index.do"]{R. v. Singh Riar}}, 2015 SCC 50}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36449"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15622/index.do"]{Alberta (Attorney General) v. Moloney}}, 2015 SCC 51}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Superintendent of Bankruptcy}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35820"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35820"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15623/index.do"]{407 ETR Concession Co. v. Canada (Superintendent of Bankruptcy)}}, 2015 SCC 52}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Gwendolyn Miron}◊li{Michael Dow}◊li{Peter Teolis}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35696"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35696"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15624/index.do"]{Saskatchewan (Attorney General) v. Lemare Lake Logging Ltd.}}, 2015 SCC 53}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35923"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35923"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15627/index.do"]{R. v. Hecimovic}}, 2015 SCC 54}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36260"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15628/index.do"]{R. v. Moriarity}}, 2015 SCC 55}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35755"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35873"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35946"]{3}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15629/index.do"]{Caron v. Alberta}}, 2015 SCC 56}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Catholic School Trustees' Association}◊li{Assemblée communautaire fransaskoise}◊li{Association canadienne-française de l'Alberta}◊li{Attorney General of Canada}◊li{Attorney General of Saskatchewan}◊li{Commissioner of Official Languages for Canada}◊li{Conseil scolaire Centre-Nord No. 2}◊li{Denis Lefebvre}◊li{Fédération des associations de juristes d'expression française de common law inc.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35842"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35842"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15646/index.do"]{Canadian Broadcasting Corp. v. SODRAC 2003 Inc.}}, 2015 SCC 57}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Ariel Katz}◊li{Canadian Council of Music Industry Associations}◊li{Canadian Independent Music Association}◊li{Canadian Music Publishers Association}◊li{Canadian Musical Reproduction Rights Agency Ltd.}◊li{Centre for Intellectual Property Policy}◊li{International Confederation of Music Publishers}◊li{International Federation of the Phonographic Industry}◊li{Music Canada}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}◊li{l'Association Québecoise de l'industrie du disque, du spectacle et de la vidéo}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35918"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35918"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15647/index.do"]{B010 v. Canada (Citizenship and Immigration)}}, 2015 SCC 58}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{Attorney General of Ontario}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Civil Liberties Association}◊li{Canadian Council for Refugees}◊li{David Asper Centre for Constitutional Rights}◊li{United Nations High Commissioner for Refugees}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35388"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35677"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35685"]{3}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35688"]{4}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35388"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35677"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35685"]{3}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35688"]{4}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15648/index.do"]{R. v. Appulonappa}}, 2015 SCC 59}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Amnesty International}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Civil Liberties Association}◊li{Canadian Council for Refugees}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35958"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35958"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15653/index.do"]{Canadian Imperial Bank of Commerce v. Green}}, 2015 SCC 60}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Foundation for Advancement of Investor Rights}◊li{Insurance Bureau of Canada}◊li{Ontario Securities Commission}◊li{Shareholder Association for Research and Education}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35807"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35811"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35813"]{3}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35807"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35811"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35813"]{3}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15665/index.do"]{Kanthasamy v. Canada (Citizenship and Immigration)}}, 2015 SCC 61}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Barbra Schlifer Commemorative Clinic}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Centre for Victims of Torture}◊li{Canadian Council for Refugees}◊li{Justice for Children and Youth}◊li{Parkdale Community Legal Services}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35990"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35990"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15666/index.do"]{M.M. v. United States of America}}, 2015 SCC 62}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{British Columbia Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35838"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35838"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15681/index.do"]{R. v. McKenna}}, 2015 SCC 63}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36506"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15680/index.do"]{R. v. Lacasse}}, 2015 SCC 64}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36001"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36001"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15682/index.do"]{R. v. Riesberry}}, 2015 SCC 65}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36179"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16402/index.do"]{S.H. v. Quebec (Emploi et Solidarité sociale)}}, 2015 SCC 66}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36674"]{1}]}
}
}
}
◊heading{2016}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Appeals decided}◊th{Appeals with interveners}◊th{Appeals as of right}◊th{Appeals as of right with interventions}
}
◊tr{
◊td{56}◊td{31}◊td{14}◊td{2}
}
}
}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Citation}◊th{Criminal?}◊th['((class "as-of-right-column"))]{A.o.R.?}◊th{Interveners}◊th['((class "no-print drop-on-small-screens"))]{Details}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15695/index.do"]{Canadian Pacific Railway Co. v. Canada (Attorney General)}}, 2016 SCC 1}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Railway Association of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36223"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36223"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15712/index.do"]{R. v. Seruhungo}}, 2016 SCC 2}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36523"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15713/index.do"]{R. v. Spicer}}, 2016 SCC 3}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36532"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15696/index.do"]{Carter v. Canada (Attorney General)}}, 2016 SCC 4}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alliance Of People With Disabilities Who Are Supportive of Legal Assisted Dying Society}◊li{Association for Reformed Political Action (ARPA) Canada}◊li{Association québécoise pour le droit de mourir dans la dignité}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Canadian Association for Community Living}◊li{Canadian Civil Liberties Association}◊li{Canadian Federation of Catholic Physicians' Societies}◊li{Canadian HIV/AIDS Legal Network}◊li{Canadian Medical Association}◊li{Canadian Unitarian Council}◊li{Catholic Civil Rights League}◊li{Catholic Health Alliance of Canada}◊li{Christian Legal Fellowship}◊li{Christian Medical and Dental Society of Canada}◊li{Council of Canadians with Disabilities}◊li{Criminal Lawyers' Association of Ontario}◊li{Dying with Dignity}◊li{Euthanasia Prevention Coalition}◊li{Euthanasia Prevention Coalition - British Columbia}◊li{Evangelical Fellowship of Canada}◊li{Faith and Freedom Alliance}◊li{Farewell Foundation For The Right To Die}◊li{HIV & AIDS Legal Clinic Ontario}◊li{Physicians' Alliance Against Euthanasia}◊li{Protection of Conscience Project}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35591"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35591"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15714/index.do"]{R. v. Meer}}, 2016 SCC 5}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36448"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15750/index.do"]{R. v. Gagnon}}, 2016 SCC 6}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36581"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15751/index.do"]{R. v. Newman}}, 2016 SCC 7}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36524"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15788/index.do"]{Commission scolaire de Laval v. Syndicat de l’enseignement de la région de Laval}}, 2016 SCC 8}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Centrale des syndicats du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35898"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35898"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16362/index.do"]{Brine v. Industrial Alliance Insurance and Financial Services Inc.}}, 2016 SCC 9}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36809"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15825/index.do"]{R. v. Knapczyk}}, 2016 SCC 10}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36612"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36613"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15824/index.do"]{R. v. Borowiec}}, 2016 SCC 11}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association of Ontario}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36585"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36585"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15858/index.do"]{Daniels v. Canada (Indian Affairs and Northern Development)}}, 2016 SCC 12}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aseniwuche Winewak Nation of Canada}◊li{Assembly of First Nations}◊li{Attorney General of Alberta}◊li{Attorney General of Saskatchewan}◊li{Chiefs in Ontario}◊li{Gift Lake Métis Settlement}◊li{Métis Federation of Canada}◊li{Métis National Council}◊li{Métis Settlements General Council}◊li{Native Alliance of Quebec}◊li{Native Council of Nova Scotia}◊li{Native Council of Prince Edward Island}◊li{New Brunswick Aboriginal Peoples Council}◊li{Te'Mexw Nations}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35945"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35945"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15859/index.do"]{R. v. Lloyd}}, 2016 SCC 13}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{African Canadian Legal Clinic}◊li{British Columbia Centre for Excellence in HIV/AIDS}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of People who use drugs}◊li{Canadian Bar Association}◊li{Canadian HIV/AIDS Legal Network}◊li{Criminal Lawyers' Association of Ontario}◊li{HIV & AIDS Legal Clinic Ontario}◊li{Pivot Legal Society}◊li{Prisoners with HIV/AIDS Support Action Network}◊li{Union of British Columbia Indian Chiefs}◊li{West Coast Women's Legal Education and Action Fund (West Coast LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35982"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35982"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15860/index.do"]{R. v. Safarzadeh‑Markhali}}, 2016 SCC 14}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{Attorney General of Canada}◊li{British Columbia Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{John Howard Society of Canada}◊li{West Coast Prison Justice Society}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36162"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36162"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15915/index.do"]{World Bank Group v. Wallace}}, 2016 SCC 15}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{African Development Bank Group}◊li{Asian Development Bank}◊li{British Columbia Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{European Bank for Reconstruction and Development}◊li{Inter-American Development Bank}◊li{Nordic Investment Bank}◊li{Organisation for Economic Co-Operation and Development}◊li{Transparency International Canada Inc.}◊li{Transparency International e.V.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36315"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36315"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15916/index.do"]{R. v. Shaoulle}}, 2016 SCC 16}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36704"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15917/index.do"]{R. v. Laliberté}}, 2016 SCC 17}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36712"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15938/index.do"]{Krayzel Corp. v. Equitable Trust Co.}}, 2016 SCC 18}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36123"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15939/index.do"]{Heritage Capital Corp. v. Equitable Trust Co.}}, 2016 SCC 19}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36301"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15989/index.do"]{Canada (Attorney General) v. Chambre des notaires du Québec}}, 2016 SCC 20}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{Canadian Bar Association}◊li{Criminal Lawyers' Association}◊li{Federation of Law Societies of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35892"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35892"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15990/index.do"]{Canada (National Revenue) v. Thompson}}, 2016 SCC 21}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Bar Association}◊li{Criminal Lawyers' Association}◊li{Federation of Law Societies of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35590"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35590"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/15991/index.do"]{R. v. D.L.W.}}, 2016 SCC 22}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Animal Justice}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36450"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36450"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16016/index.do"]{Rogers Communications Inc. v. Châteauguay (City)}}, 2016 SCC 23}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Bell Mobilité Inc.}◊li{City of Toronto}◊li{Federation of Canadian Municipalities}◊li{TELUS Communications Inc.}◊li{Union des municipalités du Québec}◊li{Vidéotron s.e.n.c.}◊li{White, Christina}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36027"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36027"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16023/index.do"]{R. v. Saeed}}, 2016 SCC 24}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Association of Chiefs of Police}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36328"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36328"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16042/index.do"]{British Columbia (Workers’ Compensation Appeal Tribunal) v. Fraser Health Authority}}, 2016 SCC 25}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{British Columbia Federation of Labour}◊li{Community Legal Assistance Society}◊li{Industrial Accident Victims' Group of Ontario}◊li{Ontario Network of Injured Workers' Groups}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36300"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36300"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16044/index.do"]{R. v. Vassell}}, 2016 SCC 26}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36792"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16057/index.do"]{R. v. Jordan}}, 2016 SCC 27}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{British Columbia Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36068"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36068"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16060/index.do"]{R. v. Williamson}}, 2016 SCC 28}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{British Columbia Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36112"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36112"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16062/index.do"]{Wilson v. Atomic Energy of Canada Ltd.}}, 2016 SCC 29}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Association for Non-Organized Employees}◊li{Canadian Association of Counsel to Employers}◊li{Canadian Labour Congress}◊li{Federally Regulated Employers - Transportation and Communications}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36354"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36354"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16063/index.do"]{Lapointe Rosenstein Marchand Melançon LLP v. Cassels Brock & Blackwell LLP}}, 2016 SCC 30}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36087"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16069/index.do"]{R. v. K.R.J.}}, 2016 SCC 31}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des avocats de la défense de Montréal}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{David Asper Centre for Constitutional Rights}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36200"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36200"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16070/index.do"]{R. v. Cawthorne}}, 2016 SCC 32}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Directeur des poursuites criminelles et pénales du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36466"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36844"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36466"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36844"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16078/index.do"]{R. v. Villaroman}}, 2016 SCC 33}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36435"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36435"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16079/index.do"]{Ferme Vi‑Ber inc. v. Financière agricole du Québec}}, 2016 SCC 34}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36205"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16080/index.do"]{Lafortune v. Financière agricole du Québec}}, 2016 SCC 35}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36210"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16120/index.do"]{Musqueam Indian Band v. Musqueam Indian Band (Board of Review)}}, 2016 SCC 36}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Council for the Advancement of Native Development Officers}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36478"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36478"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16121/index.do"]{Ledcor Construction Ltd. v. Northbridge Indemnity Insurance Co.}}, 2016 SCC 37}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36452"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16146/index.do"]{Canada (Attorney General) v. Igloo Vikski Inc.}}, 2016 SCC 38}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36258"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16186/index.do"]{Conférence des juges de paix magistrats du Québec v. Quebec (Attorney General)}}, 2016 SCC 39}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association of Justices of the Peace of Ontario}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Conférence des juges de la Cour du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36165"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36165"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16188/index.do"]{R. v. Rowson}}, 2016 SCC 40}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36777"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16187/index.do"]{R. v. C.K-D.}}, 2016 SCC 41}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36877"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16189/index.do"]{Endean v. British Columbia}}, 2016 SCC 42}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Quebec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35843"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36456"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=35843"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36456"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16201/index.do"]{R. v. Anthony‑Cook}}, 2016 SCC 43}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des avocats de la défense de Montréal}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36410"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36410"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16202/index.do"]{Morasse v. Nadeau‑Dubois}}, 2016 SCC 44}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Public Interest Research Group}◊li{Amnesty International}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36351"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36351"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16212/index.do"]{Urban Communications Inc. v. BCNET Networking Society}}, 2016 SCC 45}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36639"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16211/index.do"]{R. v. Diamond}}, 2016 SCC 46}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36816"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16213/index.do"]{Edmonton (City) v. Edmonton East (Capilano) Shopping Centres Ltd.}}, 2016 SCC 47}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assessment Review Board for the City of Edmonton}◊li{Attorney General of British Columbia}◊li{British Columbia Assessment Authority}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36403"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36403"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16224/index.do"]{Benhaim v. St‑Germain}}, 2016 SCC 48}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36291"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16241/index.do"]{British Columbia Teachers' Federation v. British Columbia}}, 2016 SCC 49}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association of Canadian Financial Officers}◊li{Association of Justice Counsel}◊li{Attorney General of Canada}◊li{Attorney General of Manitoba}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Canadian Association of Counsel to Employers}◊li{Canadian Association of Professional Employees}◊li{Canadian Labour Congress}◊li{Centrale des syndicats du Québec}◊li{Coalition of Ontario Teacher Affiliates}◊li{National Union of Public and General Employees}◊li{Professional Institute of the Public Service of Canada}◊li{Public Service Alliance of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36500"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36500"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16242/index.do"]{Royal Bank of Canada v. Trang}}, 2016 SCC 50}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36296"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16247/index.do"]{Mennillo v. Intramodal inc.}}, 2016 SCC 51}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36124"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16250/index.do"]{Lizotte v. Aviva Insurance Company of Canada}}, 2016 SCC 52}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{Barreau du Québec}◊li{Canadian Bar Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36373"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36373"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16251/index.do"]{Alberta (Information and Privacy Commissioner) v. University of Calgary}}, 2016 SCC 53}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{British Columbia Freedom of Information and Privacy Association}◊li{Canadian Bar Association}◊li{Criminal Lawyers' Association}◊li{Federation of Law Societies of Canada}◊li{Information Commissioner of Canada}◊li{Information and Privacy Commissioner for British Columbia}◊li{Information and Privacy Commissioner for the Province of Newfoundland and Labrador}◊li{Information and Privacy Commissioner of Ontario}◊li{Law Society of Alberta}◊li{Manitoba Ombudsman}◊li{Northwest Territories Information and Privacy Commissioner}◊li{Nova Scotia Information and Privacy Commissioner [Review Officer]}◊li{Nunavut Information and Privacy Commissioner}◊li{Privacy Commissioner of Canada}◊li{Saskatchewan Information and Privacy Commissioner}◊li{Yukon Ombudsman and Information and Privacy Commissioner}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36460"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36460"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16279/index.do"]{Windsor (City) v. Canadian Transit Co.}}, 2016 SCC 54}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Federation of Canadian Municipalities}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36465"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36465"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16280/index.do"]{Jean Coutu Group (PJC) Inc. v. Canada (Attorney General)}}, 2016 SCC 55}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Agence du revenu du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36505"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36505"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16281/index.do"]{Canada (Attorney General) v. Fairmont Hotels Inc.}}, 2016 SCC 56}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36606"]{1}]}
}
}
}
◊heading{2017}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Appeals decided}◊th{Appeals with interveners}◊th{Appeals as of right}◊th{Appeals as of right with interventions}
}
◊tr{
◊td{64}◊td{42}◊td{14}◊td{3}
}
}
}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Citation}◊th{Criminal?}◊th['((class "as-of-right-column"))]{A.o.R.?}◊th{Interveners}◊th['((class "no-print drop-on-small-screens"))]{Details}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16325/index.do"]{Ernst v. Alberta Energy Regulator}}, 2017 SCC 1}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{David Asper Centre for Constitutional Rights}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36167"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36167"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16344/index.do"]{R. v. Awer}}, 2017 SCC 2}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37021"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16345/index.do"]{R. v. Clark}}, 2017 SCC 3}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Canadian Association of Chiefs of Police}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36813"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36813"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16346/index.do"]{R. v. Bédard}}, 2017 SCC 4}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37071"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16347/index.do"]{R. v. Natewayes}}, 2017 SCC 5}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36793"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16348/index.do"]{B.C. Freedom of Information and Privacy Association v. British Columbia (Attorney General)}}, 2017 SCC 6}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36495"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36495"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16361/index.do"]{Sabean v. Portage La Prairie Mutual Insurance Co.}}, 2017 SCC 7}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36575"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16414/index.do"]{Nelson (City) v. Mowatt}}, 2017 SCC 8}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36999"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36999"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16415/index.do"]{R. v. Clifford}}, 2017 SCC 9}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37140"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37140"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16416/index.do"]{R. v. Brown}}, 2017 SCC 10}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37153"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16418/index.do"]{R. v. Olotu}}, 2017 SCC 11}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37167"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16417/index.do"]{R. v. Bingley}}, 2017 SCC 12}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36610"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36610"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16441/index.do"]{R. v. Peers}}, 2017 SCC 13}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Constitution Foundation}◊li{Ontario Securities Commission}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36865"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36865"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16442/index.do"]{R. v. Aitkens}}, 2017 SCC 14}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Canadian Constitution Foundation}◊li{Ontario Securities Commission}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36866"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36866"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16484/index.do"]{R. v. Paterson}}, 2017 SCC 15}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36472"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36472"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16485/index.do"]{R. v. S.B.}}, 2017 SCC 16}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37042"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16486/index.do"]{R. v. Oland}}, 2017 SCC 17}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36986"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36986"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16498/index.do"]{Godbout v. Pagé}}, 2017 SCC 18}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Quebec}◊li{Société de l'assurance automobile du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36385"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36388"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36385"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36388"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16511/index.do"]{Desjardins Financial Security Life Assurance Company v. Émond}}, 2017 SCC 19}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36919"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16499/index.do"]{Green v. Law Society of Manitoba}}, 2017 SCC 20}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Federation of Law Societies of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36583"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36583"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16512/index.do"]{R. v. Savard}}, 2017 SCC 21}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36908"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16516/index.do"]{Ostiguy v. Allie}}, 2017 SCC 22}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36694"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16589/index.do"]{Pintea v. Johns}}, 2017 SCC 23}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Access Pro Bono}◊li{National Self-Represented Litigants Project}◊li{Pro Bono Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37109"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37109"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16590/index.do"]{Lajeunesse (Re)}}, 2017 SCC 24}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{9069-4654 Québec inc.}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Commission des normes, de l'équité, de la santé et de la sécurité du travail}◊li{Trial Lawyers Association of British Columbia}◊li{Tribunal administratif du travail (formerly known as Commission des lésions professionnelles)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37320"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37320"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16591/index.do"]{R. v. Hunt}}, 2017 SCC 25}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37314"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16628/index.do"]{Quebec (Director of Criminal and Penal Prosecutions) v. Jodoin}}, 2017 SCC 26}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des avocats de la défense de Montréal}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}◊li{Trial Lawyers Association of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36539"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36539"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16649/index.do"]{R. v. Antic}}, 2017 SCC 27}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36783"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36783"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16664/index.do"]{Saadati v. Moorhead}}, 2017 SCC 28}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Insurance Bureau of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36703"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36703"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16665/index.do"]{Pellerin Savitz LLP v. Guindon}}, 2017 SCC 29}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36915"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16679/index.do"]{Stewart v. Elk Valley Coal Corp.}}, 2017 SCC 30}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Construction Labour Relations - an Alberta Association}◊li{Construction Owners Association of Alberta}◊li{Council of Canadians with Disabilities}◊li{Electrical Contractors Association of Alberta}◊li{Empowerment Council}◊li{Enform Canada}◊li{Greater Toronto Sewer and Watermain Contractors Association}◊li{Mining Association of British Columbia}◊li{Mining Association of Canada}◊li{Northwest Territories and Nunavut Chamber of Mines}◊li{Ontario Formwork Association}◊li{Ontario General Contractors Association}◊li{Ontario Mining Association}◊li{Saskatchewan Mining Association}◊li{United Nurses of Alberta}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36636"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36636"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16693/index.do"]{R. v. Cody}}, 2017 SCC 31}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Manitoba}◊li{Attorney General of Ontario}◊li{Attorney General of Quebec}◊li{Criminal Lawyers' Association of Ontario}◊li{Directeur des poursuites criminelles et pénales du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37310"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37310"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16694/index.do"]{Teal Cedar Products Ltd. v. British Columbia}}, 2017 SCC 32}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36595"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16700/index.do"]{Douez v. Facebook, Inc.}}, 2017 SCC 33}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Civil Liberties Association}◊li{Information Technology Association of Canada}◊li{Interactive Advertising Bureau of Canada}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36616"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36616"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16701/index.do"]{Google Inc. v. Equustek Solutions Inc.}}, 2017 SCC 34}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{AOL Inc.}◊li{ARTICLE 19}◊li{American Society of News Editors}◊li{Associated Press}◊li{Association of Alternative Newsmedia}◊li{Association of Canadian Publishers}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{California Newspaper Publishers Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Publishers’ Council}◊li{Center for Investigative Reporting}◊li{Center for Technology and Society}◊li{Dow Jones & Company, Inc.}◊li{Electronic Frontier Foundation}◊li{First Amendment Coalition}◊li{First Look Media Works, Inc.}◊li{Human Rights Watch}◊li{International Confederation of Music Publishers}◊li{International Confederation of Societies of Authors and Composers}◊li{International Federation of Film Producers Associations}◊li{International Federation of the Phonographic Industry}◊li{Investigative Reporting Workshop at American University}◊li{Music Canada}◊li{New England First Amendment Coalition}◊li{News Media Alliance}◊li{Online News Association}◊li{Open Net (Korea)}◊li{OpenMedia Engagement Network}◊li{Reporters Committee for Freedom of the Press}◊li{Society of Professional Journalists}◊li{Software Freedom Law Centre}◊li{Wikimedia Foundation}◊li{Worldwide Independent Network}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36602"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36602"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16702/index.do"]{R. v. Bradshaw}}, 2017 SCC 35}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36537"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36537"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16713/index.do"]{AstraZeneca Canada Inc. v. Apotex Inc.}}, 2017 SCC 36}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Generic Pharmaceutical Association}◊li{Centre for Intellectual Property Policy}◊li{Fédération internationale des conseils en propriété intellectuelle}◊li{Innovative Medicines Canada and BIOTECanada}◊li{Intellectual Property Institute of Canada}◊li{Intellectual Property Owners Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36654"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36654"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16714/index.do"]{R. v. Alex}}, 2017 SCC 37}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36771"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36771"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16723/index.do"]{R. v. George}}, 2017 SCC 38}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37372"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16724/index.do"]{Wilson v. Alharayeri}}, 2017 SCC 39}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36689"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16743/index.do"]{Clyde River (Hamlet) v. Petroleum Geo‑Services Inc.}}, 2017 SCC 40}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Attorney General of Saskatchewan}◊li{Chiefs in Ontario}◊li{Inuvialuit Regional Corporation}◊li{Makivik Corporation}◊li{Nunavut Tunngavik Incorporated}◊li{Nunavut Wildlife Management Board}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36692"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36692"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16744/index.do"]{Chippewas of the Thames First Nation v. Enbridge Pipelines Inc.}}, 2017 SCC 41}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Attorney General of Saskatchewan}◊li{Chiefs in Ontario}◊li{Mississaugas of the New Credit First Nation}◊li{Mohawk Council of Kahnawà:ke}◊li{Nunavut Wildlife Management Board}◊li{Suncor Energy Marketing Inc.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36776"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36776"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16745/index.do"]{Quebec (Attorney General) v. Guérin}}, 2017 SCC 42}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Conseil d'arbitrage}◊li{Fédération des médecins spécialistes du Québec}◊li{Régie de l'assurance maladie du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36775"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36775"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16746/index.do"]{Uniprix inc. v. Gestion Gosselin et Bérubé inc.}}, 2017 SCC 43}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36718"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16771/index.do"]{India v. Badesha}}, 2017 SCC 44}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Centre for Victims of Torture}◊li{Canadian Council for Refugees}◊li{Canadian Lawyers for International Human Rights}◊li{David Asper Centre for Constitutional Rights}◊li{South Asia Legal Clinic of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36981"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36981"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16786/index.do"]{R. v. Durham Regional Crime Stoppers Inc.}}, 2017 SCC 45}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37052"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37052"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16787/index.do"]{Canada (Attorney General) v. Thouin}}, 2017 SCC 46}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Quebec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36869"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36869"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16797/index.do"]{Canada (Attorney General) v. Fontaine}}, 2017 SCC 47}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Coalition to Preserve Truth}◊li{Information Commissioner of Canada}◊li{Privacy Commissioner of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37037"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37037"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16801/index.do"]{Montréal (City) v. Dorval}}, 2017 SCC 48}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36752"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16802/index.do"]{R. v. Bourgeois}}, 2017 SCC 49}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37461"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16803/index.do"]{Tran v. Canada (Public Safety and Emergency Preparedness)}}, 2017 SCC 50}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{African Canadian Legal Clinic}◊li{Attorney General of British Columbia}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Refugee Lawyers}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36784"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36784"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16815/index.do"]{Teva Canada Ltd. v. TD Canada Trust}}, 2017 SCC 51}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Generic Pharmaceutical Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36918"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36918"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16817/index.do"]{R. v. Robinson}}, 2017 SCC 52}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37411"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16818/index.do"]{R. v. Millington}}, 2017 SCC 53}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37235"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16816/index.do"]{Ktunaxa Nation v. British Columbia (Forests, Lands and Natural Resource Operations)}}, 2017 SCC 54}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Alberta Muslim Public Affairs Council}◊li{Amnesty International}◊li{Attorney General of Canada}◊li{Attorney General of Saskatchewan}◊li{British Columbia Civil Liberties Association}◊li{Canadian Chamber of Commerce}◊li{Canadian Muslim Lawyers Association}◊li{Central Coast Indigenous Resource Alliance}◊li{Christian Legal Fellowship}◊li{Council of the Passamaquoddy Nation at Schoodic}◊li{Evangelical Fellowship of Canada}◊li{Katzie First Nation}◊li{Kootenay Presbytery (United Church of Canada)}◊li{Prophet River First Nation}◊li{Shibogama First Nations Council}◊li{South Asia Legal Clinic of Ontario}◊li{Te'Mexw Nations}◊li{West Moberly First Nations}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36664"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36664"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16827/index.do"]{Association of Justice Counsel v. Canada (Attorney General)}}, 2017 SCC 55}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37014"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16844/index.do"]{Barreau du Québec v. Quebec (Attorney General)}}, 2017 SCC 56}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Chartered Professional Accountants of Canada}◊li{Ordre des comptables professionnels agréés du Québec}◊li{Tribunal administratif du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37034"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37034"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16852/index.do"]{R. v. Sciascia}}, 2017 SCC 57}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37155"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37155"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16890/index.do"]{First Nation of Nacho Nyak Dun v. Yukon}}, 2017 SCC 58}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Canada}◊li{Council of Yukon First Nations}◊li{Gwich'in Tribal Council}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36779"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36779"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16896/index.do"]{R. v. Marakah}}, 2017 SCC 59}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37118"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37118"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16897/index.do"]{R. v. Jones}}, 2017 SCC 60}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Directeur des poursuites criminelles et pénales du Québec}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37194"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37194"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16898/index.do"]{Cowper‑Smith v. Morgan}}, 2017 SCC 61}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37120"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16919/index.do"]{British Columbia Human Rights Tribunal v. Schrenk}}, 2017 SCC 62}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{African Canadian Legal Clinic}◊li{Alberta Federation of Labour}◊li{Canadian Association of Labour Lawyers}◊li{Canadian Construction Association}◊li{Community Legal Assistance Society}◊li{International Association of Machinists and Aerospace Workers Local Lodge 99}◊li{Ontario Human Rights Commission}◊li{Retail Action Network}◊li{West Coast Women's Legal Education and Action Fund (West Coast LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37041"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37041"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16920/index.do"]{Deloitte & Touche v. Livent Inc. (Receiver of)}}, 2017 SCC 63}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Coalition for Good Governance}◊li{Chartered Professional Accountants of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36875"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36875"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16921/index.do"]{R. v. Boutilier}}, 2017 SCC 64}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{Attorney General of Alberta}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Attorney General of Saskatchewan}◊li{Criminal Lawyers' Association of Ontario}◊li{Yukon Legal Services Society}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37168"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37168"]{1}]}
}
}
}
◊heading{2018}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Appeals decided}◊th{Appeals with interveners}◊th{Appeals as of right}◊th{Appeals as of right with interventions}
}
◊tr{
◊td{59}◊td{39}◊td{18}◊td{3}
}
}
}
◊div['((class "full-width"))]{
◊table['((class "scc-stats full-width"))]{
◊tr{
◊th{Citation}◊th{Criminal?}◊th['((class "as-of-right-column"))]{A.o.R.?}◊th{Interveners}◊th['((class "no-print drop-on-small-screens"))]{Details}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16957/index.do"]{R. v. Seipp}}, 2018 SCC 1}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Director of Public Prosecutions of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37513"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37513"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16958/index.do"]{Delta Air Lines Inc. v. Lukács}}, 2018 SCC 2}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Canadian Transportation Agency}◊li{Council of Canadians with Disabilities}◊li{International Air Transport Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37276"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37276"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16959/index.do"]{Quebec (Commission des normes, de l’équité, de la santé et de la sécurité du travail) v. Caron}}, 2018 SCC 3}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Administrative Labour Tribunal (formerly known as Commission des lésions professionnelles)}◊li{Attorney General of Quebec}◊li{Canadian Union of Public Employees}◊li{Centrale des syndicats du Québec}◊li{Conseil du patronat du Québec}◊li{Industrial Accident Victims' Group of Ontario}◊li{Miriam Home and Services}◊li{Ontario Network of Injured Workers' Groups}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36605"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36605"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16969/index.do"]{Williams Lake Indian Band v. Canada (Aboriginal Affairs and Northern Development)}}, 2018 SCC 4}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Assembly of First Nations}◊li{Assembly of First Nations of Quebec and Labrador}◊li{Assembly of Manitoba Chiefs}◊li{Carrier Sekani Tribal Council}◊li{Cowichan Tribes, represented by Chief William Charles Seymour, on his own behalf and on behalf of the members of Cowichan Tribes}◊li{Federation of Sovereign Indigenous Nations}◊li{Halalt First Nation}◊li{Indigenous Bar Association in Canada}◊li{Nlaka'pamux Nation Tribal Council}◊li{Penelakut First Nation}◊li{Specific Claims Tribunal}◊li{Stz'uminus First Nation}◊li{Stó:lo Nation}◊li{Stó:lo Tribal Council}◊li{Union of British Columbia Indian Chiefs}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36983"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=36983"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16981/index.do"]{R. v. Canadian Broadcasting Corp.}}, 2018 SCC 5}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Peoples Television Network}◊li{Ad Idem/Canadian Media Lawyers Association}◊li{CTV, a Division of Bell Media Inc.}◊li{Global News, a division of Corus Television Limited Partnership}◊li{Postmedia Network Inc.}◊li{The Globe and Mail Inc.}◊li{Vice Studio Canada Inc.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37360"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37360"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16982/index.do"]{R. v. A.R.J.D.}}, 2018 SCC 6}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37715"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16988/index.do"]{R. v. G.T.D.}}, 2018 SCC 7}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37756"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16983/index.do"]{Valard Construction Ltd. v. Bird Construction Co.}}, 2018 SCC 8}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Surety Association of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37272"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37272"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/16987/index.do"]{R. v. A.G.W.}}, 2018 SCC 9}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37795"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17021/index.do"]{R. v. Black}}, 2018 SCC 10}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37665"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17022/index.do"]{International Brotherhood of Electrical Workers (IBEW) Local 773 v. Lawrence}}, 2018 SCC 11}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Provincial Building and Construction Trades Council of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37617"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37617"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17030/index.do"]{R. v. Carson}}, 2018 SCC 12}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37506"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17031/index.do"]{R.A. v. Her Majesty The Queen}}, 2018 SCC 13}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37757"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17058/index.do"]{R. v. Magoon}}, 2018 SCC 14}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37416"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37479"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17059/index.do"]{R. v. Comeau}}, 2018 SCC 15}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{50th Parallel Estate Limited Partnership}◊li{Alberta Small Brewers Association}◊li{Artisan Ales Consulting Inc.}◊li{Association of Canadian Distillers, operating as Spirits Canada}◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Newfoundland and Labrador}◊li{Attorney General of Nova Scotia}◊li{Attorney General of Ontario}◊li{Attorney General of Prince Edward Island}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Attorney General of the North West Territories}◊li{Canada's National Brewers}◊li{Canadian Chamber of Commerce}◊li{Canadian Federation of Independent Business}◊li{Canadian Hatching Egg Producers}◊li{Canadian Vintners Association}◊li{Cannabis Culture}◊li{Chicken Farmers of Canada}◊li{Consumers Council of Canada}◊li{Dairy Farmers of Canada}◊li{Egg Farmers of Canada}◊li{Federal Express Canada Corporation}◊li{Government of Nunavut as represented by the Minister of Justice}◊li{Liquidity Wines Ltd.}◊li{Montreal Economic Institute}◊li{Noble Ridge Vineyard and Winery Limited Partnership}◊li{Okanagan Crush Pad Winery Ltd.}◊li{Painted Rock Estate Winery Ltd.}◊li{Turkey Farmers of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37398"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37398"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17064/index.do"]{Office of the Children’s Lawyer v. Balev}}, 2018 SCC 16}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Attorney General of Canada}◊li{Attorney General of Ontario}◊li{Barbra Schlifer Commemorative Clinic}◊li{Defence for Children International - Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37250"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37250"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17077/index.do"]{Quebec (Attorney General) v. Alliance du personnel professionnel et technique de la santé et des services sociaux}}, 2018 SCC 17}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association of Canadian Financial Officers}◊li{Attorney General of Ontario}◊li{Canadian Association of Professional Employees}◊li{Centrale des syndicats du Québec}◊li{Commission des normes, de l'équité, de la santé et de la sécurité du travail}◊li{Conseil du Trésor}◊li{Equal Pay Coalition}◊li{New Brunswick Coalition for Pay Equity}◊li{Professional Association of Foreign Service Officers}◊li{Professional Institute of the Public Service of Canada}◊li{Public Service Alliance of Canada}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37347"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37347"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17078/index.do"]{Centrale des syndicats du Québec v. Quebec (Attorney General)}}, 2018 SCC 18}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Equal Pay Coalition}◊li{New Brunswick Coalition for Pay Equity}◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37002"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37002"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17085/index.do"]{Rankin (Rankin’s Garage & Sales) v. J.J.}}, 2018 SCC 19}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Justice for Children and Youth}◊li{Ontario Trial Lawyers Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37323"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37323"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17086/index.do"]{R. v. Cain}}, 2018 SCC 20}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37926"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17096/index.do"]{R. v. Stephan}}, 2018 SCC 21}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37845"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37846"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17095/index.do"]{West Fraser Mills Ltd. v. British Columbia (Workers’ Compensation Appeal Tribunal)}}, 2018 SCC 22}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Workers' Compensation Board of Alberta}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37423"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37423"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17098/index.do"]{R. v. Colling}}, 2018 SCC 23}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37905"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17099/index.do"]{R. v. Gulliver}}, 2018 SCC 24}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37917"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17100/index.do"]{R. v. Wong}}, 2018 SCC 25}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{African Canadian Legal Clinic}◊li{Association des avocats de la défense de Montréal}◊li{Attorney General of Alberta}◊li{Attorney General of Ontario}◊li{Canadian Association of Refugee Lawyers}◊li{Canadian Civil Liberties Association}◊li{Canadian Council for Refugees}◊li{Chinese and Southeast Asian Legal Clinic}◊li{Criminal Lawyers' Association of Ontario}◊li{Directeur des poursuites criminelles et pénales du Québec}◊li{South Asia Legal Clinic of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37367"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37367"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17101/index.do"]{Highwood Congregation of Jehovah’s Witnesses (Judicial Committee) v. Wall}}, 2018 SCC 26}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association for Reformed Political Action (ARPA) Canada}◊li{British Columbia Civil Liberties Association}◊li{Canadian Constitution Foundation}◊li{Canadian Council of Christian Charities}◊li{Canadian Muslim Lawyers Association}◊li{Catholic Civil Rights League}◊li{Christian Legal Fellowship}◊li{Church of Jesus Christ of Latter-Day Saints in Canada}◊li{Evangelical Fellowship of Canada}◊li{Justice Centre for Constitutional Freedoms}◊li{Seventh-Day Adventist Church in Canada}◊li{World Sikh Organization of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37273"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37273"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17113/index.do"]{Groia v. Law Society of Upper Canada}}, 2018 SCC 27}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{Attorney General of Ontario}◊li{Attorney General of Saskatchewan}◊li{Barreau du Québec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Bar Association}◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association of Ontario}◊li{Director of Public Prosecutions of Canada}◊li{Federation of Law Societies of Canada}◊li{Independent Criminal Defence Advocacy Society}◊li{Law Society Tribunal}◊li{Ontario Crown Attorneys' Association}◊li{Ontario Trial Lawyers Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37112"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37112"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17115/index.do"]{Haaretz.com v. Goldhar}}, 2018 SCC 28}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37202"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37202"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17132/index.do"]{Montréal (Ville) v. Lonardi}}, 2018 SCC 29}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37184"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17133/index.do"]{Ewert v. Canada}}, 2018 SCC 30}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Elizabeth Fry Societies}◊li{Canadian Human Rights Commission}◊li{Criminal Lawyers' Association of Ontario}◊li{Mental Health Legal Committee}◊li{Native Women's Association of Canada}◊li{Prisoners' Legal Services}◊li{Union of British Columbia Indian Chiefs}◊li{West Coast Prison Justice Society}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37233"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37233"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17134/index.do"]{Canada (Canadian Human Rights Commission) v. Canada (Attorney General)}}, 2018 SCC 31}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{African Canadian Legal Clinic}◊li{Amnesty International}◊li{Attorney General of Quebec}◊li{Canadian Muslim Lawyers Association}◊li{Chinese and Southeast Asian Legal Clinic}◊li{Community Legal Assistance Society}◊li{Council of Canadians with Disabilities}◊li{First Nations Child and Family Caring Society}◊li{HIV & AIDS Legal Clinic Ontario}◊li{Income Security Advocacy Centre}◊li{Matson, Jeremy E.}◊li{Native Women's Association of Canada}◊li{Public Service Alliance of Canada}◊li{Sudbury Community Legal Clinic}◊li{Women's Legal Education and Action Fund (LEAF)}◊li{Zulkoskey, Tania}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37208"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37208"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17140/index.do"]{Law Society of British Columbia v. Trinity Western University}}, 2018 SCC 32}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{Association for Reformed Political Action (ARPA) Canada}◊li{BC LGBTQ Coalition}◊li{British Columbia Humanist Association}◊li{Canadian Association of University Teachers}◊li{Canadian Bar Association}◊li{Canadian Conference of Catholic Bishops}◊li{Canadian Council of Christian Charities}◊li{Canadian Secular Alliance}◊li{Catholic Civil Rights League}◊li{Christian Higher Education Canada}◊li{Christian Legal Fellowship}◊li{Egale Canada Human Rights Trust}◊li{Evangelical Fellowship of Canada}◊li{Faith and Freedom Alliance}◊li{Faith, Fealty & Creed Society}◊li{International Coalition of Professors of Law}◊li{Law Students' Society of Ontario}◊li{Lawyer's Right Watch Canada}◊li{National Coalition of Catholic School Trustees' Associations}◊li{Roman Catholic Archdiocese of Vancouver}◊li{Seventh-Day Adventist Church in Canada}◊li{West Coast Women's Legal Education and Action Fund (West Coast LEAF)}◊li{World Sikh Organization of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37318"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37318"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17141/index.do"]{Trinity Western University v. Law Society of Upper Canada}}, 2018 SCC 33}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates' Society}◊li{Association for Reformed Political Action (ARPA) Canada}◊li{Attorney General of Ontario}◊li{British Columbia Humanist Association}◊li{Canadian Association of University Teachers}◊li{Canadian Bar Association}◊li{Canadian Civil Liberties Association}◊li{Canadian Conference of Catholic Bishops}◊li{Canadian Council of Christian Charities}◊li{Canadian Secular Alliance}◊li{Catholic Civil Rights League}◊li{Christian Higher Education Canada}◊li{Christian Legal Fellowship}◊li{Criminal Lawyers' Association of Ontario}◊li{Egale Canada Human Rights Trust}◊li{Evangelical Fellowship of Canada}◊li{Faith and Freedom Alliance}◊li{Faith, Fealty & Creed Society}◊li{International Coalition of Professors of Law}◊li{Law Students' Society of Ontario}◊li{Lawyer's Right Watch Canada}◊li{Lesbians Gays Bisexuals and Trans People of the University of Toronto (LGBTOUT)}◊li{National Coalition of Catholic School Trustees' Associations}◊li{OUTlaws}◊li{Roman Catholic Archdiocese of Vancouver}◊li{Seventh-Day Adventist Church in Canada}◊li{Start Proud}◊li{United Church of Canada}◊li{World Sikh Organization of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37209"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37209"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17158/index.do"]{R. v. Suter}}, 2018 SCC 34}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37247"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17177/index.do"]{Lorraine (Ville) v. 2646‑8926 Québec inc.}}, 2018 SCC 35}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Communauté métropolitaine de Montréal}◊li{Québec Association of Construction and Housing Professionals Inc.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37381"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37381"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17185/index.do"]{British Columbia v. Philip Morris International, Inc.}}, 2018 SCC 36}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Information and Privacy Commissioner for British Columbia}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37524"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37524"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17190/index.do"]{R. v. Brassington}}, 2018 SCC 37}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association}◊li{Federation of Law Societies of Canada}◊li{Independent Criminal Defence Advocacy Society}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37476"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37476"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17254/index.do"]{Rogers Communications Inc. v. Voltage Pictures, LLC}}, 2018 SCC 38}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Bell Canada Inc.}◊li{Canadian Network Operators Consortium Inc.}◊li{Cogeco Inc.}◊li{Quebecor Media Inc.}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}◊li{Saskatchewan Telecommunications Holding Corporation}◊li{Shaw Communications Inc.}◊li{TELUS Communications Inc.}◊li{TekSavvy Solutions Inc.}◊li{Xplornet Communications Inc.}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37679"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37679"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17287/index.do"]{Chagnon v. Syndicat de la fonction publique et parapublique du Québec}}, 2018 SCC 39}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Honourable Serge Joyal, P.C.}◊li{Speaker of the Legislative Assembly of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37543"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37543"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17288/index.do"]{Mikisew Cree First Nation v. Canada (Governor General in Council)}}, 2018 SCC 40}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Advocates for the Rule of Law}◊li{Assembly of First Nations}◊li{Attorney General of Alberta}◊li{Attorney General of British Columbia}◊li{Attorney General of New Brunswick}◊li{Attorney General of Quebec}◊li{Attorney General of Saskatchewan}◊li{Champagne and Aishihik First Nations}◊li{Federation of Sovereign Indigenous Nations}◊li{First Nation of Na-Cho Nyak Dun}◊li{First Nations of the Maa-nulth Treaty Society}◊li{Gitanyow Hereditary Chiefs}◊li{Grand Council of the Crees (Eeyou Istchee), Cree Nation Government}◊li{Kwanlun Dün First Nation}◊li{Little Salmon Carmacks First Nation}◊li{Manitoba Métis Federation Inc.}◊li{Teslin Tlingit Council}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37441"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37441"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17304/index.do"]{R. v. Gagnon}}, 2018 SCC 41}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Women's Legal Education and Action Fund (LEAF)}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37972"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37972"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17305/index.do"]{R. v. Normore}}, 2018 SCC 42}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37993"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17303/index.do"]{3091‑5177 Québec inc. (Éconolodge Aéroport) v. Lombard General Insurance Co. of Canada}}, 2018 SCC 43}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Promutuel Insurance Portneuf-Champlain}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37421"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37422"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37421"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37422"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17325/index.do"]{R. v. Gubbins}}, 2018 SCC 44}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}◊li{Directeur des poursuites criminelles et pénales du Québec}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37395"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37403"]{2}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37395"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37403"]{2}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17326/index.do"]{R. v. Awashish}}, 2018 SCC 45}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Ontario}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37207"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37207"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17338/index.do"]{Churchill Falls (Labrador) Corp. v. Hydro‑Québec}}, 2018 SCC 46}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37238"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17370/index.do"]{Callidus Capital Corp. v. Canada}}, 2018 SCC 47}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Association of Insolvency and Restructuring Professionals}◊li{Canadian Bankers Association}◊li{Insolvency Institute of Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37768"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37768"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17355/index.do"]{Reference re Pan‑Canadian Securities Regulation}}, 2018 SCC 48}◊td{}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of Alberta}◊li{Attorney General of Manitoba}◊li{Attorney General of New Brunswick}◊li{Attorney General of Nova Scotia}◊li{Attorney General of Ontario}◊li{Attorney General of Prince Edward Island}◊li{Attorney General of Saskatchewan}◊li{Barreau du Québec}◊li{Institute for Governance of Private and Public Organizations}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37613"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37613"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17356/index.do"]{R. v. Youssef}}, 2018 SCC 49}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=38036"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17371/index.do"]{Mazraani v. Industrial Alliance Insurance and Financial Services Inc.}}, 2018 SCC 50}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association des juristes d'expression française de l'Ontario}◊li{Barreau du Québec}◊li{Canadian Bar Association}◊li{Commissioner of Official Languages for Canada}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37642"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37642"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17389/index.do"]{R. v. Ajise}}, 2018 SCC 51}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=38149"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17388/index.do"]{Moore v. Sweet}}, 2018 SCC 52}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37546"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17398/index.do"]{R. v. Vice Media Canada Inc.}}, 2018 SCC 53}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{ARTICLE 19}◊li{Aboriginal Peoples Television Network}◊li{Ad Idem/Canadian Media Lawyers Association}◊li{Attorney General of Ontario}◊li{British Columbia Civil Liberties Association}◊li{Canadian Association of Journalists}◊li{Canadian Broadcasting Corporation}◊li{Canadian Civil Liberties Association}◊li{Canadian Journalists for Free Expression}◊li{Canadian Media Guild/Communications Workers of America Canada}◊li{Canadian Muslim Lawyers Association}◊li{Centre for Free Expression}◊li{Committee to Protect Journalists}◊li{David Asper Centre for Constitutional Rights}◊li{Global News, a division of Corus Television Limited Partnership}◊li{Index on Censorship}◊li{International Press Institute}◊li{Media Law Resource Centre}◊li{Media Legal Defence Initiative}◊li{PEN Canada}◊li{Pen International}◊li{Postmedia Network Inc.}◊li{Reporters Committee for Freedom of the Press}◊li{Reporters Without Borders}◊li{World Association of Newspapers and News Publishers}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37574"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37574"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17399/index.do"]{R. v. Cyr-Langlois}}, 2018 SCC 54}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Association québécoise des avocats et avocates de la défense}◊li{Attorney General of Ontario}◊li{Criminal Lawyers' Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37760"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37760"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17404/index.do"]{Brunette v. Legault Joly Thiffault, s.e.n.c.r.l.}}, 2018 SCC 55}◊td{}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37566"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17405/index.do"]{R. v. Reeves}}, 2018 SCC 56}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Attorney General of British Columbia}◊li{Criminal Lawyers' Association of Ontario}◊li{Directeur des poursuites criminelles et pénales du Québec}◊li{Director of Public Prosecutions of Canada}◊li{Samuelson-Glushko Canadian Internet Policy & Public Interest Clinic}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37676"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37676"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17417/index.do"]{R. v. Culotta}}, 2018 SCC 57}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{◊ul{◊li{Canadian Civil Liberties Association}◊li{Criminal Lawyers' Association}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=38213"]{1}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=38213"]{1}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17416/index.do"]{R. v. Boudreault}}, 2018 SCC 58}◊td{crim.}◊td['((class "as-of-right-column"))]{}◊td['((class "intervener-cell"))]{◊ul{◊li{Aboriginal Legal Service of Toronto Inc.}◊li{Attorney General of Alberta}◊li{Attorney General of Quebec}◊li{British Columbia Civil Liberties Association}◊li{Canadian Civil Liberties Association}◊li{Colour of Poverty - Colour of Change}◊li{Criminal Lawyers' Association of Ontario}◊li{Income Security Advocacy Centre}◊li{Pivot Legal Society}◊li{Yukon Legal Services Society}}◊p['((class "small-screens-only"))]{Details:  [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37427"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37774"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37782"]{3}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37783"]{4}]}}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37427"]{1}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37774"]{2}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37782"]{3}] [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=37783"]{4}]}
}
◊tr{
◊td{◊em{◊a[#:href "https://scc-csc.lexum.com/scc-csc/scc-csc/en/item/17418/index.do"]{R. v. Quartey}}, 2018 SCC 59}◊td{crim.}◊td['((class "as-of-right-column"))]{a.o.r.}◊td['((class "intervener-cell"))]{}◊td['((class "no-print drop-on-small-screens"))]{ [◊a[#:href "https://www.scc-csc.ca/case-dossier/info/parties-eng.aspx?cas=38026"]{1}]}
}
}
}
