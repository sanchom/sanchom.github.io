#lang pollen

◊define-meta[page-title]{Policing Info World}
◊define-meta[snippet]{A review of a conference on data, law enforcement, and surveillance.}
◊define-meta[original-date]{2019-05-25}

◊title{Policing Info World: Conference Review}

On May 23, I attended a free, one-day conference on data, law
enforcement, and surveillance that was hosted by the ◊a[#:href
"https://fipa.bc.ca"]{BC Freedom of Information and Privacy
Association} (BC FIPA), the ◊a[#:href "https://bccla.org"]{BC Civil
Liberties Association} (BCCLA), and ◊a[#:href
"https://www.kpu.ca"]{Kwantlen Polytechnic University} (KPU).

There were four panels: one on surveillance, one on predictive and
algorithmic policing, one on the ideal of bias-free policing, and one
on searches for data when crossing the border.

◊sub-heading{On surveillance}

The panel:

◊itemize{

Michelle Davey, Vancouver Police Department's Superintendent in charge
of Investigative Support Services,

Wade Deisman, Associate Dean of Arts at KPU whose research interests
include policing, law, technology, and security, and

Josh Patterson, Executive Director of the BCCLA.

}

On this panel, Michelle Davey discussed the VPD's plans for a
drone/uncrewed aerial vehicle. They are still developing the policy
that will control its use, but she was able to tell us that it will
primarily be used for emergency response and gathering data to analyze
an accident or crime that has already happened, especially vehicle
collisions. She said that it would be also used during large public
events to monitor unlawful gatherings of people (mentioning the 2011
Stanley Cup Riots as an example where this would have been
useful). Each use of the drone will require high-level approval and
they will document and publish each use of the drone.

Josh Patterson expressed support for all the uses of the drone that
were mentioned, with the exception of potentially indiscriminate
wide-area surveillance at public events. When people expect to be
surveilled, they may be less likely to show up at an event they would
have otherwise been present for, even when their presence would have
been wholly peaceful and lawful.

I hope that that VPD's drone policy discloses the factors that they
will use to determine whether a public event justifies the use of a
drone for pre-emptive monitoring and what is done with the data in the
case that no criminal investigations follow from the event.

The VPD also already operates a helicopter. While the use of a drone
may bring certain privacy issues to the forefront and will potentially
subject more people more frequently to surveillance, it is not
different in kind from that which is already possible.

◊sub-heading{Predictive policing}

The panel:

◊itemize{
Ryan Prox, from VPD's Crime Analytics Advisory & Development unit, and

Mike Larsen, President of BC FIPA, and a criminology professor at KPU
whose research interests include the security state and access to
information.

}

Ryan Prox presented how the VPD uses predictive policing to inform
where they should place officers. They restrict the use of predictive
policing to only the most patterned and predictable crime: property
offenses. You can see the data that they use as input to the system at
◊a[#:href "https://geodash.vpd.ca/"]{geodash.vpd.ca}.

Of course, police presence itself would increase the observations of
crime in a particular area, thus potentially creating a feedback cycle
where the system would suggest deployments to areas where crime had
been observed by officers, because that's where they had been deployed
in the past. However, the system does not include property crimes that
were reported by an officer: it only bases its predictions on property
crime that is reported by the property owner, thus avoiding the
particular feedback loop just mentioned.

The system also isn't used for predictive deployments to the downtown
eastside or in areas around temporary modular housing. These areas
already have their own community-policing programs and officers that
are specially trained to work in these areas and with these
communities.

It did seem like this system is being developed with an awareness of
the risks inherent in off-loading decision-making to a
mathematical/algorithmic process. Prox pointed to the Federal Treasury
Board's ◊a[#:href
"https://www.tbs-sct.gc.ca/pol/doc-eng.aspx?id=32592"]{Algorithmic
Impact Assessment} which, while not legally applicable outside of the
federal government, gives a useful framework for managing the human
risks of algorithmic decision-making in general. For example, if an
automated decision will "likely have very high impacts on ◊elide the
rights of individuals or communities", then the government must (among
other things) allow peer review by non-government, publish
descriptions of the system and training data, have the final decision
be made by a human, and conduct ongoing monitoring to detect
unintentional outcomes.

◊sub-heading{On the ideal of bias-free policing}

The panel:

◊itemize{

Dylan Mazur, community lawyer with the BCCLA, and

Michelle Cameron, a Senior Investigator with the Civilian Review and
Complaints Commission for the RCMP.

}

Dylan Mazur discussed street checks and their place on the spectrum of
political violence as a means to disorganize social movements. (In
June 2018, the Union of British Columbia Indian Chiefs and the BCCLA
◊a[#:href
"https://bccla.org/wp-content/uploads/2018/06/UBCIC-BCCLA-OPCC-Complaint-re-Street-Checks-Jun-14-2018-Approved-1.pdf"]{filed
a complaint with the Office of the Police Complaint Commissioner}
regarding the over-representation of Indigenous and Black people in
street checks conducted by the VPD.)

Michelle Cameron talked about her experience as an analyst and
investigator and discussed the need for good data in order to detect
expressions of bias and monitor improvement (or lack thereof).

The panel talked about the difficulty in obtaining accurate race-based
data in the context of a street check. The categories that people slot
themselves into on a census don't match how they might identify
themselves to an officer after an adversarial, power-imbalanced
encounter.

This need for data is consistent with many of the ◊a[#:href
"http://trc.ca/assets/pdf/Calls_to_Action_English2.pdf"]{Calls to
Action} from the Truth and Reconciliation Commission of Canada which
call for data on criminal victimization and to "monitor and evaluate
progress" in eliminating over-representation of Indigenous people in
custody, for example.

◊sub-heading{On data searches at the border}

The panel:

◊itemize{

Peter Edelmann, an immigration lawyer, and

Meghan McDermott, BCCLA's policy staff council.

}

Peter Edelmann presented the state of the law on data searches when
coming into Canada. The power for these searches comes from customs
and immigration statutes that give the Canadian Border Services Agency
(CBSA) heightened ability to search for material that might reveal
customs- or immigration-related offences.

◊declare-work[#:type "statute" #:title "Customs Act" #:volume "RSC"
#:year "1985" #:chapter "1 (2nd Supp)" #:id "Customs Act" #:url
"https://laws-lois.justice.gc.ca/eng/acts/c-52.6/FullText.html"]

There is very little case law on the issue, but what is sure is that
CBSA requires no reasonable grounds (as would normally be required for
a search) to search your goods at the border.◊note-cite["Customs Act"
#:pinpoint "Section 99(1)(a)"] And "goods, for greater certainty,
includes conveyances, animals and any document in any
form."◊note-cite["Customs Act" #:pinpoint "Section 2(1)"]

◊declare-work[#:type "legal-case" #:title "R v Gibson" #:citation
"2017 BCPC 237" #:url
"https://www.canlii.org/en/bc/bcpc/doc/2017/2017bcpc237/2017bcpc237.html"
#:id "Gibson"]

◊declare-work[#:type "legal-case" #:title "R v Moroz" #:citation "2012
ONSC 5642" #:url
"https://www.canlii.org/en/on/onsc/doc/2012/2012onsc5642/2012onsc5642.html"
#:id "Moroz"]

What is less clear is how the government is to treat the data that is
on your phone. Is it a good? All we have today are some lower court
decisions that say the data is a "good" for the purposes of the
◊em{Customs Act}.◊note{◊see-eg["Gibson" #:pinpoint "paras 95--98"]
◊see-also["Moroz" #:pinpoint "paras 20--21"]}

Edelmann emphasized the discrepancy between how Canada treats data
that crosses the border through the ordinary means (over the internet)
and data that happens to cross the border on a physical device like a
cell phone. He argued the government needs to clarify with legislation
how ◊em{data} should be regulated and then do that uniformly,
predictably, and transparently, rather than shoehorning our new
devices into old categories of searches as a way of getting at a tiny
fraction of data that is crossing the border.

Meghan McDermott presented portions of the ◊a[#:href
"https://bccla.org/wp-content/uploads/2018/07/Electronic-Devices-Privacy-Handbook-BCCLA_2018.pdf"]{Electronic
Devices Privacy Handbook: A Guide to Your Rights at the Border},
published by the BCCLA and the Canadian Internet Policy and Public
Interest Clinic (CIPPIC) in 2018.

The main takeaway for me was the lack of transparency from the CBSA
regarding their border-search practices, especially regarding the
National Targetting Program. This is part of a strategy of pushing our
borders outward. What might increase the likelihood that your
electronic device is searched at the border? It is impossible to know,
but court cases and access-to-information requests provide some
hints. The BCCLA/CIPPIC handbook identifies a list of potential
factors, including having "anime and manga" or being "a single man
travelling alone."

◊heading{Connection with the history of government searches}

◊declare-work[#:type "book" #:title "The Fourth Amendment: Origins and
Original Meaning 602--1793" #:author-given "William J" #:author-family
"Cuddihy" #:publisher "Oxford University Press" #:year "2009" #:id "Cuddihy"]

I'm reading a book right now on the history of protections against
search and seizure in England and the US.◊note-cite["Cuddihy"] A theme
that comes up time and time again is how popular opposition to
government searches did not crystallize until the practice became
oppressive to the right group of people. The law didn't suddenly give
the government more search powers between 1580 and 1642, but a new
opposition to government searches became apparent during that
time. What changed? Instead of the government searching only the lower
classes and "vagrants in particular", searches started to be "the
frequent experience of the many."◊note-cite["Cuddihy" #:pinpoint "page
94"] And the Kings were using these new tactics as tools for
disorganizing social structures and political opposition. The
following are some quotes from the book (emphasis
mine).◊note-cite["Cuddihy" #:pinpoint "pages 95--98"]

◊q{

[T]he reasons that the Tudors sponsored the new general privy search
were as much political as social. Henry VII and his successors wanted
to rid England not only of its human eyesores but of the "seditions
and rebellions" that vagrancy bred. ◊b{Making the houses of their
subjects less secure against searches was the Tudors’ method of making
their throne more secure.}

}

◊q{

The reasons that Englishmen waited nearly a century after the general
search became routine to condemn it arose from the compartmentalized
sequence in which they realized its impact and the social values by
which they gauged that impact. Although privy searches were general,
they aimed at lowly, illiterate beggars and vagrants. ◊b{Articulate
Englishmen, therefore, did not experience those searches or sympathize
with those who did, especially because most privy searches occurred in
barns, lodging houses, and inns rather than in private dwellings.
Social attitudes toward vagrants as an unworthy underclass delayed
resentment of such searches until other more esteemed members of
society were subjected to them.} ◊elide

Mass protests against the mechanism of search and seizure started in
the 1580s because of further changes in it and in the identity of the
types of persons that it affected. Having demonstrated its efficacy as
an antivagrancy device, the general search was an obvious candidate
for extension to the further purpose of crushing religious and
political dissent, and there too, it produced spectacular results
against Jesuits and Protestant radicals alike.

}


◊q{

The present-day counterpart [of vagrancy searches] might be weekly,
nocturnal inspections of all liquor stores, rooming houses, and
video-game parlors for drunks, drug-addicts, derelicts, and runaway
adolescents.

}

(I would add street-checks to this list.)

◊q{

The nobility and dissenting clerics, the articulate and educated
groups most capable of protesting violent searches began to experience
them routinely for the first time in the last two decades of the
sixteenth century.

}

It's important to understand what the law allows our government to do,
regardless of whether actual practice is currently constrained by
policy, practicality, or discretion.
