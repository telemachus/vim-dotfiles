" Extend tpope/vim-markdown using gabrielelana/vim-markdown
syn region markdownBlockquote start=/^\s*\%(>\s\?\)\+\%(.\)\@=/ end=/\n\n/ contains=markdownBlockquoteDelimiter
syn match markdownBlockquoteDelimiter /^\s*\%(>\s\?\)\+/ contained


hi def link markdownBlockquote Comment
hi def link markdownBlockquoteDelimiter Delimiter
