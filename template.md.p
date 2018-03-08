◊(local-require racket/list)
◊(apply string-append "\uFEFF" (filter string? (flatten doc)))
