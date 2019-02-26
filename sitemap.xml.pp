#lang pollen
◊(require racket/string)

◊(define pagelist (pagetree->list (get-pagetree "index.ptree")))

<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

<url>
<loc>https://sanchom.github.io</loc>
<changefreq>weekly</changefreq>
</url>

◊(apply string-append (map (lambda (x)
                             (string-join `(,(format "<url>\n<loc>http://sanchom.github.io/~a</loc>\n" x)
                                            ,(if (select 'edited-date x) (format "<lastmod>~a</lastmod>\n" (select 'edited-date x))
                                                 (if (select 'original-date x) (format "<lastmod>~a</lastmod>\n" (select 'original-date x)) ""))
                                            "<changefreq>weekly</changefreq>\n</url>\n\n")
                                          ""
                                          ))
                           pagelist))

</urlset>