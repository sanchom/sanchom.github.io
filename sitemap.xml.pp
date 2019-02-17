#lang pollen

◊(define pagelist (pagetree->list (get-pagetree "index.ptree")))

<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

<url>
<loc>https://sanchom.github.io</loc>
<changefreq>weekly</changefreq>
</url>

◊(apply string-append (map (lambda (x) (format "<url>\n<loc>https://sanchom.github.io/~a</loc>\n<changefreq>weekly</changefreq>\n</url>\n\n" x)) pagelist))

</urlset>