<!DOCTYPE html>
<!--
◊|template-message|
-->

◊(define title (processed-title (select-from-metas 'page-title metas)))
◊(define prev-page (previous here))
◊(define next-page (next here))
◊(define prev-is-home (eq? prev-page 'index.html))
◊(define am-home (eq? here 'index.html))
◊(define original-date (select 'original-date metas))
◊(define edited-date (select 'edited-date metas))
◊(define featured-image-url
   (if (select 'featured-image-url metas)
       (select 'featured-image-url metas)
       (get-featured-image-url doc)))
◊(define snippet (select 'snippet metas))
◊(define include-disqus (not (or (eq? here 'index.html)
                                 (eq? here 'colophon.html))))

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
    <meta name="msvalidate.01" content="E6A615B4A274D4C956DDF0ED5959BD59" />

    ◊when/splice[featured-image-url]{<meta name="twitter:card" content="summary_large_image" />}
    ◊when/splice[(not featured-image-url)]{<meta name="twitter:card" content="summary" />}
    <meta name="twitter:site" content="@sanchom" />
    <meta property="og:title" content="◊(simplified-title here)" />
    ◊when/splice[snippet]{<meta property="og:description" content="◊|snippet|" />}
    ◊when/splice[featured-image-url]{<meta property="og:image" content="◊|site-root|/◊|featured-image-url|" />}

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>◊|site-title|—◊(simplified-title metas)</title>
    <link rel="stylesheet" type="text/css" href="../site-style.css" />
    ◊when/splice[(not am-home)]{<link rel="canonical" href="https://sanchom.github.io/◊|here|" />}
    ◊when/splice[am-home]{<link rel="canonical" href="https://sanchom.github.io/" />}
</head>
  <body ◊when/splice[(need-right-margin? doc)]{class="print-with-right-margin"}>
<header>
  <nav>
    <div class="header">
      <div class="left-header">◊when/splice[prev-page]{◄ <a href="◊|prev-page|">◊(->html (grab-optionally-shortened-title prev-page))</a>}◊when/splice[(not prev-page)]{<a href="site-index.html">Index</a>}</div>
      <div class="center-header">◊when/splice[(and (not prev-is-home)(not am-home))]{<a href="index.html">Home</a> · <a href="site-index.html">Index</a>}◊when/splice[prev-is-home]{<a href="site-index.html">Index</a>}</div>
      <div class="right-header">◊when/splice[next-page]{<a href="◊|next-page|">◊(->html (grab-optionally-shortened-title next-page))</a> ►}</div>
    </div>
  </nav>
  <div style="clear: both;"></div>
  ◊when/splice[am-home]{<h1 class="center">Sancho McCann</h1><p class="subtitle center">Law, tech, writing, art.</h3>}
</header>
<div style="clear: both;"></div>
<article>

◊when/splice[(not am-home)]{<h1>◊(->html title)</h1><div class="byline">By Sancho McCann · <span class="date">
◊when/splice[original-date]{<time datetime="◊|original-date|">◊|original-date|</time>}◊when/splice[edited-date]{, edited: <time datetime="◊|edited-date|">◊|edited-date|</time>}
</span></div>}
    ◊(->html doc)
</article>

◊when/splice[include-disqus]{
<div id="disqus_thread"></div>
<script>


var disqus_config = function () {
this.page.url = "https://sanchom.github.io/◊|here|"
this.page.identifier = "◊|here|"
};

(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://sanchom.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
}

  </body>
</html>
