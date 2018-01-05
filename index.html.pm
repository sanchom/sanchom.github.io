#lang pollen

◊define-meta[page-title]{Home}

I am a computer scientist interested in object recognition, machine
learning, and applications of deep neural networks.

Currently: data scientist at Kobo, webmaster for the Webster Memorial Trophy
Competition, ◊a[#:href
"http://athletics.ca/wp-content/themes/default-bs3/popups/athlete-rankings.php?id=8218097&year=0"]{amateur
sprinter}, Class 1 Flight Instructor (not active).

Formerly: 2× Google Intern, Head of R&D for Shelfie, Canadian Forces Officer
(Cadet Instructor Cadre), student government at UBC.

◊div[#:class "external-link-logos"]{
◊little-logo[#:href "https://sanchom.wordpress.com"]{assets/wordpress-logo-notext-rgb.png}
◊little-logo[#:href "https://twitter.com/sanchom"]{assets/Twitter_Social_Icon_Circle_Color.png}
}
◊aside{
◊a[#:href "2017-in-review/index.html"]{What I was up to and thinking about in 2017}.
}

◊h1{Selected Publications}

Sancho McCann. "Object classification and localization using spatially
localized features". Ph.D. Dissertation. UBC Department of Computer
Science. 2014.
◊b-link{https://open.library.ubc.ca/media/download/pdf/24/1.0167312/1}

Sancho McCann and David G. Lowe. "Spatially Local Coding for Object
Recognition." ◊em{ACCV}, 2012.
◊b-link{assets/McCannLowe_ACCV2012_0851.pdf} ◊b-link[#:word
"poster"]{assets/McCannLowe_ACCV2012_0851_poster.pdf} ◊b-link[#:word
"project page"]{http://www.cs.ubc.ca/projects/spatially-local-coding}

Sancho McCann and David G. Lowe. "Local Naive Bayes Nearest Neighbor
for Image Classification." ◊em{CVPR}, 2012.
◊b-link{assets/McCannLowe_CVPR2012_1925.pdf} ◊b-link[#:word "project
page"]{http://www.cs.ubc.ca/projects/local-nbnn}

A more complete list is at my ◊a[#:href
"https://scholar.google.com/citations?user=6C-udIUAAAAJ"]{Google
Scholar profile}.

◊h1{Selected Projects}

◊h4{AtmosView: Visualization Redesign}
◊thumbnail[#:big "assets/Screen-shot-2011-08-07-at-9.22.51-AM.png"]
I created AtmosView, a new visualization of atmospheric sounding data
(vertical profiles of the atmosphere's temperature and
humidity). People use this data to predict soaring conditions,
atmospheric stability, and the likelihood of severe weather. Previous
diagrams have been called the most difficult atmospheric diagrams to
read. AtmosView helps people to see better the information they're interested
in and allows for easier comparisons between multiple charts.

Sancho McCann. "Atmospheric Sounding Visualization." ◊b-link[#:word
"project report"]{assets/McCann-AtmosView.pdf"}

◊h4{Humanoid Robot}
◊thumbnail[#:big "assets/abarenbou.png" #:small "assets/abarenbou-225x300.png"]{}
I worked with ◊a[#:href
"http://www.cs.umanitoba.ca/~jacky/"]{Dr. Jacky Baltes} to build a
small-size humanoid robot. I coded in C and cross compiled for the ARM
processor on a Sony Clie. I programmed it to walk and to find and kick
a ball. This was our entry in the 2005 FIRA RoboWorld Cup.

Sancho McCann and Jacky Baltes. "Abarenbou – A Small Vision-Based
Humanoid Robotic Research platform." In ◊em{Proc. of the Third
International Conference on Computational Intelligence, Robotics, and
Autonomous Systems (CIRAS)},
2005. ◊b-link{assets/McCannBaltes-Abarenbou.pdf}

◊h4{Robot Airplane}
◊thumbnail[#:big "assets/airplane.png"]{}
At the University of Manitoba, I was part of a team that built a robot
airplane that could take-off, fly a search pattern, and land---all
autonomously. The airplane sent a video feed and telemetry to a ground
station, where one of our teammates could mark targets of interest and
report their coordinates. We placed first out of seventeen teams in a
competition that included BYU, University of Texas, Cornell, MIT, and
UCSD. I wrote much of the computer vision code, which transformed the
video feed's pixel coordinates into GPS coordinates, and presented
that information to our ground station's operator.

Paul Furgale, Sancho McCann, Jim Majewski, Andrew Bugera, and Kory
Zelickson. "Team Manitoba 2006 AUVSI Student Competition Project
Description." ◊em{AUVSI: 4th Annual Student Unmanned Aerial Vehicle
Competition}, 2006. ◊b-link{assets/TeamManitoba2006.pdf}
