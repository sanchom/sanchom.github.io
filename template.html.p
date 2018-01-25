<!DOCTYPE html>
<!--
◊|template-message|
-->
<html>
  <head>
    <!-- Global Site Tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-106592360-1"></script>
    <script>
       window.dataLayer = window.dataLayer || [];
       function gtag(){dataLayer.push(arguments)};
       gtag('js', new Date());

       gtag('config', 'UA-106592360-1');
    </script>
    <meta name="google-site-verification" content="ApapaNT3CEd0OdSE-X9Xy4xF3r_gjtWDR05XS6FANu4" />

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>◊|site-title|—◊(select 'page-title metas)</title>
    <link rel="stylesheet" type="text/css" href="../site-style.css" />
</head>
  <body>
<div class="header">
◊(define (grab-title page) (define x (select 'short-title page)) (if (not x) (select 'page-title page) x))
◊(define prev-page (previous here))
◊when/splice[prev-page]{<p class="left-header">◄ <a href="◊|prev-page|">◊(grab-title prev-page)</a></p>}
◊(define next-page (next here))
◊when/splice[next-page]{<p class="right-header"><a href="◊|next-page|">◊(grab-title next-page)</a> ►</p>}
</div>
<div style="clear: both;"></div>
    ◊(->html doc)
  </body>
</html>
