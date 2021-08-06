#lang pollen

◊define-meta[page-title]{Copyright Throughout a Creative AI Pipeline}
◊define-meta[short-title]{AI Copyright}
◊define-meta[snippet]{An article I wrote about copyright in the inputs, intermediate products, and final output of AI programs.}
◊define-meta[original-date]{2021-07-27}

◊declare-work[#:id "McCann" #:type "article" #:author "Sancho McCann"
#:title "Copyright Throughout a Creative AI Pipeline" #:journal "Can
JL & Tech" #:year "2021" #:volume "19" #:first-page "109"]

My article, "Copyright Throughout a Creative AI
Pipeline,"◊note-cite["McCann"] was just published by the Canadian
Journal of Law & Technology. The final, reviewed and edited version is
only accessible through ◊a[#:href
"https://nextcanada.westlaw.com/Document/I17a8222eea2711ebbea4f0dc9fb69570/View/FullText.html?transitionType=Default&contextData=(sc.Default)&VR=3.0&RS=cblt1.0)"]{WestLaw}
for the first nine months after publication. But I am allowed to share
[this draft version on
SSRN](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3893972) for
the time being. I also share an abstract below. If you have WestLaw
access, I encourage you to read the final version; I think it was
quite improved through the review and editing process.

This draft version does not include some of the acknowledgements and
important references that made it into the final version, so I include
those below.

◊sub-heading{Abstract}

Consider the following fact pattern.

◊q{

Alex paints some original works on canvas and posts photos of them
online. Becca downloads those images and uses them to train an AI
(training configures the AI’s model parameters to useful
values). Becca posts the resulting trained parameter values on her
website under a license that reserves to Becca the right to use the
parameters commercially. Cory uses those parameter values in a program
that is designed to produce artwork. Cory clicks create and the
program produces a work. This work is new to Cory, but it looks a lot
like one of Alex’s original canvas images. Cory sells the work. Advise
Cory about their potential copyright liability to Alex (for the
substantially similar work that the program produced and that Cory
subsequently sold) and to Becca (for taking Becca’s parameters and
using them commercially, contrary to the license).

Cory clicks create again. The program produces another work, this time
quite different from any of Alex’s original paintings. Cory shares new
work on Instagram. Danny copies this image from Cory’s Instagram feed
and sells a bunch of postcards that feature that image.  Advise Danny
about their copyright liability to Cory.

}

These scenarios are not as contrived as they might initially
seem. People frequently use copyrighted works when training an AI
(more precisely: when training an AI’s parameters). The resulting
trained parameters are being shared under licences that assume the
parameters are the subject of copyright. People do use these
parameters in programs that can produce novel content. The resulting
work can be quite surprising to the end-user and there are generally
no checks in place to ensure that the new works do not take too
directly from the original training data. However, many of the new
works will be quite different from any content already in the
world. And the end-users of the creative program often claim copyright
ownership over the resulting novel work.

I will first present the training and use of a creative program based
on a neural network, a popular model that forms the basis of
state-of-the-art creative AIs. Then, I will examine each of the issues
just raised:

1. Does the person managing the automatic training of a neural
network’s parameters obtain a copyright in the resulting trained
parameters?

2. Does a person using a program that produces artistic output obtain
a copyright in that output?

3. The automatic training of a neural network requires large amounts
of example data (a training set). Can images from around the internet
be copied for the purpose of training a neural network?

4. What if a person uses an AI to produce a work that looks
substantially similar to one of the training examples? Is that an
infringement? And who is infringing?

Today’s state-of-the-art "creative" AI tools are based on a technology
(neural networks) that serve to separate the programmer and trainer
from any of the eventual expression, even the expression stored in the
automatically-learned network parameters. It would be very rare that a
programmer or trainer might obtain copyright in the output from an
automatically trained "creative" AI. However, there are a multitude of
ways to use such an AI to produce output, many of which would very
well justify awarding copyright to the end-user, especially when they
use the AI as an elaborate brush with which to bring their own ideas
to life in expression.

The current methods of training these creative AI tools requires large
amounts of training data: existing works often protected by
copyright. It is unclear whether Canada’s fair dealing user right
allows for such copying for the purpose of training a neural network,
particularly when not for private purposes. When a fair dealing user
right is not available, this copying would be copyright infringement:
unauthorized reproduction of existing works. Canada should clarify or
expand the fair dealing user right to allow for such copying.

Trainers must be careful that they have not simply embedded a
representation of the training examples in the AI. If the AI
effectively contains "direct reflections" of the training data such
that it regularly reproduces them, distributing such an AI would be
copyright infringement. The trainer has a burden to verify that they
are not distributing copies of the training data.

This analysis allocates copyright in a manner consistent with a
pragmatic conception of creativity and art. It keeps the focus on
human expression and allows for free distribution of the material
needed for more people to have more practice with creative tools while
preserving protection for original expression.


◊sub-heading{Acknowledgements}

I would like to thank Professor Jon Festinger, Q.C., for many helpful
discussions while supervising this work and Professor Graham Reynolds
for valuable feedback on an earlier draft.

◊sub-heading{Related work}

There are several related works that contribute to and are cited in
the final piece that are not included in the draft version that I've
shared above. These were enlightening and make related arguments to
mine, so I would like to share them here as well.

◊declare-work[#:id "IPQ" #:type "book" #:author "Margaret Llewelyn"
#:editors? "yes" #:title "Intellectual Property Quarterly" #:publisher
"Sweet & Maxwell" #:publisher-location "London, UK" #:year "2020"]

◊format-work[#:type "chapter" #:author "Enrico Bonadio"
#:author2-given "Luke" #:author2-family "McDonagh" #:title "Artificial
Intelligence as Producer and Consumer of Copyright Works: Evaluating
the Consequences of Algorithmic Creativity" #:in-book "IPQ"
#:first-page "112" #:url
"https://openaccess.city.ac.uk/id/eprint/23951/"]

◊format-work[#:type "article" #:author-given "Bruce E" #:author-family
"Boyden" #:title "Emergent Works" #:year "2016" #:journal "Colum JL &
Arts" #:volume "39" #:issue "3" #:first-page "377" #:url
"https://doi.org/10.7916/jla.v39i3.2077"]

◊format-work[#:type "article" #:author "Carys Craig" #:author2-given
"Ian" #:author2-family "Kerr" #:title "The Death of the AI Author"
#:year "2021" #:journal "Ottawa L Rev" #:volume "52" #:issue "1"
#:first-page "31" #:url "https://rdo-olr.org/fr/2021/5612/"]

◊format-work[#:type "article" #:author-given "Daniel J"
#:author-family "Gervais" #:title "The Machine as Author" #:journal
"Iowa L Rev" #:year "2020" #:volume "105" #:issue "5" #:first-page
"2053" #:url
"https://ilr.law.uiowa.edu/print/volume-105-issue-5/the-machine-as-author/"]

◊format-work[#:type "article" #:author "James Grimmelmann" #:title
"There's No Such Thing as a Computer-Authored Work---And It's a Good
Thing, Too" #:year "2016" #:journal "Colum JL & Arts" #:volume "39"
#:issue "3" #:first-page "403" #:url
"https://doi.org/10.7916/jla.v39i3.2079"]

◊format-work[#:type "article" #:author-given "Mark A" #:author-family
"Lemley" #:author2-given "Bryan" #:author2-family "Casey" #:title
"Fair Learning" #:journal "Texas L Rev" #:volume "99" #:issue "4"
#:first-page "743" #:year "2021" #:url
"https://texaslawreview.org/fair-learning/"]

◊format-work[#:type "article" #:author "Pamela Samuelson" #:title
"Allocating Ownership Rights in Computer-Generated Works" #:journal "U
Pitt L Rev" #:volume "47" #:first-page "1185" #:year "1986" #:url
"https://lawcat.berkeley.edu/record/1112407"]

