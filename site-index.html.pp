#lang pollen

◊(require pollen/pagetree)
◊(require pollen/template/html)

<!DOCTYPE html>

◊(define pagelist (pagetree->list (get-pagetree "index.ptree")))

<html>
  <head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-ZBTLXWG3QD"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'G-ZBTLXWG3QD');
    </script>
    <meta name="google-site-verification" content="ApapaNT3CEd0OdSE-X9Xy4xF3r_gjtWDR05XS6FANu4" />

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>◊|site-title|—Site Index</title>
    <link rel="stylesheet" type="text/css" href="../site-style.css" />
    <link rel="canonical" href="https://sanchom.github.io/site-index.html" />
    <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon/favicon-16x16.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png" />
</head>
  <body>
    <script>
      (function(d, s, id){
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) {return;}
      js = d.createElement(s); js.id = id;
      js.src = "https://assets.gfycat.com/gfycat.js";
      fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'gfycat-js'));
    </script>
<header>
  <nav>
    <div class="header">
      <div class="left-header"></div>
      <div class="center-header"><a href="index.html">Home</a></div>
      <div class="right-header"></div>
    </div>
  </nav>
</header>
<div style="clear: both;"></div>

    <h1>Site index</h1>
<ul>
◊(define exclude-from-list '(index.html))
◊(apply string-append (map (lambda (x)
                             (if (select 'original-date x)
                                 (format "<li style=\"margin-bottom: 1rem; text-align: left;\"><a href=\"~a\">~a</a> (~a)</li>\n"
                                         x (->html (processed-title (select-from-metas 'page-title x))) (make-nice-date (select 'original-date x)))
                                 (format "<li style=\"margin-bottom: 1rem; text-align: left;\"><a href=\"~a\">~a</a></li>\n"
                                         x (->html (processed-title (select-from-metas 'page-title x))))))
                           (remove* exclude-from-list pagelist)))
</ul>

  </body>
</html>
