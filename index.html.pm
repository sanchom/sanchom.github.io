#lang pollen

◊define-meta[page-title]{Home}

In September, I will be starting a law degree at UBC's Allard School of Law. My interests
in this area are broad, and I expect they may change, but at the outset, I want to focus
on the parts of law that help give the weakest of us a voice, in the justice system and in
society in general. This includes defendant rights, free expression, and in some respects,
copyright. I also want to help with public legal education and access-to-justice initiatives,
to help give more of us more confidence in the outcomes of the justice system and other government
decision-making processes.

I'm trained as a computer scientist and in that field, I've focused on visual object recognition,
machine learning, and applications of deep neural networks.

Currently: data scientist at Kobo, volunteer with the ◊a[#:href
"http://bccla.org/"]{BCCLA}, ◊a[#:href
"http://athletics.ca/wp-content/themes/default-bs3/popups/athlete-rankings.php?id=8218097&year=0"]{amateur
sprinter}.

Formerly: Head of R&D for Shelfie, Class 1 Flight Instructor (current
but not active), Canadian Forces Officer (Cadet Instructor Cadre), 2×
Google Intern.

◊div[#:class "external-link-logos"]{
◊little-logo[#:href "https://sanchom.wordpress.com" #:img "assets/wordpress-logo-notext-rgb.png"]
◊little-logo[#:href "https://twitter.com/sanchom" #:img "assets/tw_ico.png"]
}

◊heading{Selected Publications}

◊cite-thesis[#:author "Sancho McCann" #:title "Object classification and localization using
spatially-localized features" #:description "Ph.D. Dissertation"
#:institution "University of British Columbia" #:year "2014" #:url
"https://open.library.ubc.ca/media/download/pdf/24/1.0167312/1"]

◊cite-proceedings[#:author "Sancho McCann and David G. Lowe" #:title
"Spatially-local coding for object recognition" #:proceedings "11th
Asian Conference on Computer Vision" #:year "2012" #:publisher
"Springer, Berlin, Heidelberg" #:pages "204-217" #:url
"assets/McCannLowe_ACCV2012_0851.pdf"]

◊cite-proceedings[#:author "Sancho McCann and David G. Lowe" #:title
"Local naive Bayes nearest neighbor for image classification"
#:proceedings "Computer Vision and Pattern Recognition"
#:publisher "IEEE" #:year "2012" #:url
"assets/McCannLowe_CVPR2012_1925.pdf" #:pages "3650-3656"]

A more complete list is at my ◊a[#:href
"https://scholar.google.com/citations?user=6C-udIUAAAAJ"]{Google
Scholar profile}.

◊heading{Selected Projects}

◊sub-heading{AtmosView: Visualization Redesign}

◊thumbnail[#:big "assets/Screen-shot-2011-08-07-at-9.22.51-AM.png"]
◊margin-note{◊cite-unpublished[#:author "Sancho McCann" #:title "Atmospheric
Sounding Visualization" #:url "assets/McCann-AtmosView.pdf"
#:description "course report" #:institution "Information
Visualization, Department of Computer Science, University of British
Columbia" #:year "2006"]} I created AtmosView, a new visualization of
atmospheric sounding data (vertical profiles of the atmosphere's
temperature and humidity). People use this data to predict soaring
conditions, atmospheric stability, and the likelihood of severe
weather. Previous diagrams have been called the most difficult
atmospheric diagrams to read. AtmosView helps people to see better the
information they're interested in and allows for easier comparisons
between multiple charts.

◊sub-heading{Humanoid Robot}

◊thumbnail[#:big "assets/abarenbou.png" #:small
"assets/abarenbou-225x300.png"]{} ◊margin-note{◊cite-proceedings[#:author "Sancho McCann and Jacky
Baltes" #:title "Abarenbou – a small vision-based humanoid robotic research
platform" #:proceedings "Proc. of the Third International Conference on
Computational Intelligence, Robotics, and Autonomous Systems"
#:year "2005" #:url "assets/McCannBaltes-Abarenbou.pdf"]} I
worked with ◊a[#:href "http://www.cs.umanitoba.ca/~jacky/"]{Dr. Jacky
Baltes} to build a small-size humanoid robot. I coded in C and cross
compiled for the ARM processor on a Sony Clie. I programmed it to
walk and to find and kick a ball. This was our entry in the 2005 FIRA
RoboWorld Cup.

◊sub-heading{Robot Airplane}

◊thumbnail[#:big "assets/airplane.png"]{}
◊margin-note{◊cite-proceedings[#:author "Paul Furgale, Sancho McCann,
Jim Majewski, Andrew Bugera, and Kory Zelickson" #:title "Team
Manitoba 2006 AUVSI Student Competition Project Description"
#:proceedings "4th Annual Student Unmanned Aerial Vehicle Competition"
#:year "2006" #:publisher "AUVSI" #:url
"assets/TeamManitoba2006.pdf"]} At the University of Manitoba, I was
part of a team that built a robot airplane that could take-off, fly a
search pattern, and land---all autonomously. The airplane sent a video
feed and telemetry to a ground station, where one of our teammates
could mark targets of interest and report their coordinates. We placed
first out of seventeen teams in a competition that included BYU,
University of Texas, Cornell, MIT, and UCSD. I wrote much of the
computer vision code, which transformed the video feed's pixel
coordinates into GPS coordinates, and presented that information to
our ground station's operator.
