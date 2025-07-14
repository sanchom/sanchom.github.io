#lang pollen

◊define-meta[page-title]{Avoid leaky links: don't reveal your research}
◊define-meta[short-title]{Leaky links}
◊define-meta[original-date]{2025-07-13}
◊define-meta[snippet]{Some basic URL hygiene practices to avoid sharing more than you mean to share.}

◊sub-heading{URLs should be as plain as possible}

Uniform resource locators (URLs) have been used since the early 1990s
to specify destinations on the internet. If you look or scroll up,
you'll see this page's URL:

◊tt{https://sanchom.github.io/leaky-links.html}

These are sometimes just called ◊em{addresses}. When clickable, these
are called ◊em{links} or ◊em{hyperlinks}.

It has also long been accepted, and increasingly expected, to provide
URLs, often via a clickable link, in court documents. For example, the
[December 2023 Amended Consolidated General Practice Guidelines of the
Federal
Court](https://www.fct-cf.gc.ca/Content/assets/pdf/base/2023-12-20_Amended_Consolidated_General_Practice_Guidelines.pdf)
allows you to avoid filing a book of authorities (a document with a
copy of each case cited to) if you instead include hyperlinks for all
cases that are cited in the memorandum of argument.

Judges and counsel often include URLs in their writting when referring
to material that is available online.

◊sub-heading{A URL can inadvertently reveal much more}

The URL can specify more than just the destination site and
page. Often, URLs embed tracking information. Below is a URL to a
Youtube video. Everything after the question mark is unnecessary and
is likely a tracking ID that reveals to Youtube that this is a link
that ◊em{I} have shared with you.

◊tt{https://youtu.be/Bv5T4-L4gfU◊b{◊red{?si=1MdmEOw****I1fX-}}}

A URL pointing to a case on CanLII may share details of the search
that you used:

◊a[#:href "https://www.canlii.org/en/qc/qccs/doc/2023/2023qccs1167/2023qccs1167.html?resultId=83ef81272f16479b9e9ae36de88447c9&searchId=2024-09-15T20:49:40:016/f484cd9df4cf466593e6a022129a8ac9&searchUrlHash=AAAAAQAVVVJMIHByaXZhY3kgcHJpdmlsZWdlAAAAAAE"]{https://www.canlii.org/en/qc/qccs/doc/2023/2023qccs1167/2023qccs1167.html◊b{◊red{?resultId=83ef81272f16479b9e9ae36de88447c9&searchId=2024-09-15T20:49:40:016/f484cd9df4cf466593e6a022129a8ac9&searchUrlHash=AAAAAQAVVVJMIHByaXZhY3kgcHJpdmlsZWdlAAAAAAE}}}

Clicking on the above link doesn't just take you to 2023 QCCS 1167. It
also will reveal that I had got there by searching for the terms
"URL," "privacy," and "privilege."

A relatively new browser function that relies on information in a URL
is called a "[text
fragment](https://developer.mozilla.org/en-US/docs/Web/URI/Fragment/Text_fragments)."
A text fragment in a URL will look like this:

◊tt{#:~:text=◊elide}

When a text fragment is in a URL, modern browsers will automatically
scroll to and highlight the specified content at the destination page.

For example, if you click on ◊a[#:href
"#:~:text=many%20modern%20browsers,highlighted"]{this link}, many
modern browsers (not Firefox, yet) will take you to back to this page,
but with a specified piece of text highlighted. Google's search
results will sometimes link to a page using a text fragment to
highlight material associated with the search that brought you
there. The risk is that if you share that URL, it may reveal
information about your search. Footnote 1 in ◊em{R. v. Dick}, [2024
BCCA 272](https://canlii.ca/t/k5wv0) includes a URL with a text
fragment. In that case, the highlighted text fragment actually seems
apt to the purpose of the citation.

I have also seen people accidentally link to a URL that points to a
location on the computer they happened to be working on at the time,
instead of to a location on the Internet. This can potentially even
reveal information protected by solicitor--client privilege or reveal
that a ghostwriter was used. E.g. something like:

◊tt{C:\MYFILES\mémoires\[NAME OF COUNSEL]\[NAME OF CLIENT]\...}

The above examples are to show the ways you might accidentally share
more information than you intend to share when you link using a URL:
tracking IDs, explicit search query information, or hints about how
you got to the page, and more.

◊sub-heading{Keeping your URLs clean}

Here are some best practices to keep your URLs clean, and to avoid
leaking information you'd rather not share:

◊itemize{

When using CanLII, avoid copying a URL from your browser's address
bar.◊note{Certainly, there is a way to copy from the address bar
safely (i.e. copy only as far as the ◊tt{.html}). But if as a rule you
don't copy from the address bar, you will not risk copying too much
information.} Instead, copy the URL in the CanLII citation
(e.g. ◊tt{<https://canlii.ca/t/jwp64>}) or from the direct links in
the dropdown menu attached to each paragraph.

Examine the URL to see if there is content that comes after a question
mark ◊tt{?}. Often this content is unnecessary. Strip it away and see
if the URL works as intended. If it works fine, go ahead and use the
simpler URL.

Unless you're intentionally using the ◊em{text fragment} feature,
delete any content in a URL following ◊tt{#:~:text=}

}
