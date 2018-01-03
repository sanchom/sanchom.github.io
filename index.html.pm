#lang pollen

I am a computer scientist interested in object recognition, machine learning,
and applications of deep neural networks.
I finished my Ph.D. at the University of British Columbia in April 2014
and was supervised by ◊a[#:href "http://www.cs.ubc.ca/~lowe/"]{David Lowe}.

◊a[#:href "2017-in-review/index.html"]{Here's what I've been up to and thinking about in 2017}.

◊div[#:class "external-link-logos"]{
◊little-logo[#:href "https://sanchom.wordpress.com"]{assets/wordpress-logo-notext-rgb.png}
◊little-logo[#:href "https://twitter.com/sanchom"]{assets/Twitter_Social_Icon_Circle_Color.png}
}

◊h2{Selected Publications}

Sancho McCann. "Object classification and localization using spatially localized features". Ph.D. Dissertation. UBC Department of Computer Science. 2014.
◊b-link{https://open.library.ubc.ca/media/download/pdf/24/1.0167312/1}

Sancho McCann and David G. Lowe. "Spatially Local Coding for Object Recognition." ◊em{ACCV}, 2012.
◊b-link{assets/McCannLowe_ACCV2012_0851.pdf}
◊b-link[#:word "poster"]{assets/McCannLowe_ACCV2012_0851_poster.pdf}
◊b-link[#:word "project page"]{http://www.cs.ubc.ca/projects/spatially-local-coding}

Sancho McCann and David G. Lowe. "Local Naive Bayes Nearest Neighbor for Image Classification." ◊em{CVPR}, 2012.
◊b-link{assets/McCannLowe_CVPR2012_1925.pdf}
◊b-link[#:word "project page"]{http://www.cs.ubc.ca/projects/local-nbnn}

David Meger, Per-Erik. Forssén, Kevin Lai, Scott Helmer, Sancho McCann, Tristram Southey, Matthew Baumann, James J. Little, and David G. Lowe. "Curious George: An Attentive Semantic Robot". In ◊em{Robotics and Autonomous Systems Journal}, Volume 56, Number 6, pp. 503–511. June 2008.
◊b-link{http://www.cs.ubc.ca/labs/lci/curious_george/pubs/UBC_RAS_FSHSC.pdf}

Sancho McCann and Jacky Baltes. "Towards Automatic Image Modification as an Empirical Test of Image Segmentation." In ◊em{Proc. 9th International Conference on Control, Automation, Robotics and Vision (ICARCV)}, 2006.
◊b-link{assets/McCannBaltes_-_Towards_Automatic_Image_Modification.pdf}

Sancho McCann and Jacky Baltes. "Abarenbou – A Small Vision-Based Humanoid Robotic Research platform." In ◊em{Proc. of the Third International Conference on Computational Intelligence, Robotics, and Autonomous Systems (CIRAS)}, 2005.
◊b-link{assets/McCannBaltes-Abarenbou.pdf}

A more complete list is at my ◊a[#:href "https://scholar.google.com/citations?user=6C-udIUAAAAJ"]{Google Scholar profile}.


◊h2{Projects}

◊h4{Spatially local coding}
◊thumbnail[#:big "assets/toptens.png" #:small "assets/toptens-150x150.png"]{}
This method for classifying images takes features that have been extracted from a training dataset and groups them into clusters that are similar in appearance and location.

More details, code: ◊b-link[#:word "project-page"]{http://www.cs.ubc.ca/projects/spatially-local-coding}

◊h4{Local Naive Bayes Nearest Neighbor}
◊thumbnail[#:big "assets/Manifold-e1333591359916.png" #:small "assets/Manifold-e1333591359916-150x150.png"]{}
Local Naive Bayes Nearest Neighbor improves upon the NBNN image classification algorithm. Local NBNN gives higher classification accuracy and runs 100 times faster than NBNN on the Caltech 256 dataset.

More details, code: ◊b-link[#:word "project page"]{http://www.cs.ubc.ca/projects/local-nbnn}

◊h4{Humanoid Robot}
◊thumbnail[#:big "assets/abarenbou.png" #:small "assets/abarenbou-225x300.png"]{}
I worked with ◊a[#:href "http://www.cs.umanitoba.ca/~jacky/"]{Dr. Jacky Baltes} to build a small-size humanoid robot. I coded in C and cross compiled for the ARM processor on a Sony Clie. I programmed it to walk and to find and kick a ball. This was our entry in the 2005 FIRA RoboWorld Cup.

Sancho McCann and Jacky Baltes. "Abarenbou – A Small Vision-Based Humanoid Robotic Research platform." In ◊em{Proc. of the Third International Conference on Computational Intelligence, Robotics, and Autonomous Systems (CIRAS)}, 2005. ◊b-link{assets/McCannBaltes-Abarenbou.pdf}

◊h4{Robot Airplane}
◊thumbnail[#:big "assets/airplane.png"]{}
At the University of Manitoba, I was part of a team that built a robot airplane that could take-off, fly a search pattern, and land---all autonomously. The airplane sent a video feed and telemetry to a ground station, where one of our teammates could mark targets of interest and report their coordinates. We placed first out of seventeen teams in a competition that included BYU, University of Texas, Cornell, MIT, and UCSD. I wrote much of the computer vision code, which transformed the video feed's pixel coordinates into GPS coordinates, and presented that information to our ground station's operator.

Paul Furgale, Sancho McCann, Jim Majewski, Andrew Bugera, and Kory Zelickson. "Team Manitoba 2006 AUVSI Student Competition Project Description." ◊em{AUVSI: 4th Annual Student Unmanned Aerial Vehicle Competition}, 2006. ◊b-link{assets/TeamManitoba2006.pdf}

◊h4{AtmosView: Visualization Redesign}
◊thumbnail[#:big "assets/Screen-shot-2011-08-07-at-9.22.51-AM.png"]
I created AtmosView, a new visualization for atmospheric sounding data (vertical profiles of the atmosphere's temperature and humidity). People use this data to predict soaring conditions, atmospheric stability, and the likelihood of severe weather. Previous diagrams have been called the most difficult atmospheric diagrams to read. AtmosView helps readers see this information on individual charts, and allows them to more easily compare between multiple charts.

Sancho McCann. "Atmospheric Sounding Visualization." ◊b-link[#:word "project report"]{assets/McCann-AtmosView.pdf"}

◊h2{Résumé}

◊h4{Languages, libraries, and tools}
Python 2/3, NumPy, OpenCV, Caffe, Tensorflow, Tensorflow Serving, C++11/14, Boost, Google Test, Protocol Buffers, Apache Thrift,
Scala, Play 2.x, Slick, Docker, Heroku, AWS.

Convolutional and recurrent neural networks.    

Custom algorithm research, design, implementation, evaluation.

◊h4{Research Assistant, University of Manitoba — 2005}
I worked with Dr. Jacky Baltes in the Autonomous Agents Laboratory on a small, humanoid robot. I wrote vision algorithms and developed a stable walking gait for the robot.

◊h4{Research and Development, Frantic Films — 2006}
I did production work for ◊em{Superman Returns} and software development for their rendering pipeline.

◊h4{Software Engineer Intern, Google — 2010, 2011}
In 2010, I helped develop a prototype Android application with the Geo/Street View team.

In 2011, I worked on improving the automatic organization of YouTube data.

◊h4{Head of Research and Development, Shelfie — 2014-2017}
Shelfie was an app that automatically identified books in photos
that our users took of their bookshelves. I wrote most of the automatic recognition system, including feature-based nearest-neighbor matching,
text-recognition, and convolutional neural networks. I created custom validation datasets and tools for quality control. I managed our SRED and IRAP projects, drafted patent applications, and mentored teammates when they helped with this research.

◊h4{Leadership, volunteering, hobbies}
I have a Commercial Pilot Licence and a Class 1 Flight Instructor Rating. I got most of my flight experience as a flight instructor at Flying Colors Pilot Training and flew with their precision flight team. I've also delivered flight training to Canadian Forces pilots taking their Primary Flight Training and have held a Class 2 Aerobatic Flight Instructor rating. I won the ◊a[#:href "http://www.flying-colors.org/WEBSTER-NEWS-RELEASE.html"]{John C. Webster Memorial Trophy}. Today, I stay current by flying recreationally around the lower mainland of British Columbia.

I was a member of the Canadian Forces in the Cadet Instructor Cadre. My duties included organizing training programs, supervision and development of instructors, administrative work, and many ad-hoc leadership roles. I've developed and taught an introductory level aviation course.

During my time at UBC, I held several volunteer roles in the Department of Computer Science at UBC. I led activities for outreach programs, I was a member of the department's recruiting and admissions committee, and I've helped deliver the TA training program. I was the president of the Computer Science Graduate Student Association and I was a councilor representing the computer science graduate students in UBC's Graduate Student Society.

I am the volunteer webmaster for the Webster Memorial Trophy Competition. I manage the technical setup of their website and also do some copywriting.

I played competitive ultimate and held leadership roles with UBC Ultimate, Refinery, and Blackfish. I'm an ◊a[#:href "http://athletics.ca/wp-content/themes/default-bs3/popups/athlete-rankings.php?id=8218097&year=0"]{amateur short-distance sprinter}.
