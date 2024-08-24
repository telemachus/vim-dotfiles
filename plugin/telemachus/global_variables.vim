" Set global variables for vim and plugins

" See :help ft-sh-syntax
let g:is_bash = 1

" See :help ft-vim-indent; default is shiftwidth() * 3, which is far too much
let g:vim_indent_cont = shiftwidth()

" See :help matchparen
let g:matchparen_timeout = 20
let g:matchparen_insert_timeout = 20

" See g:tex_conceal and g:tex_flavor
let g:tex_conceal=''
let g:tex_flavor='latex'

" See :help html-indent.
let g:html_indent_script1 = 'inc'
let g:html_indent_style1 = 'inc'

" For https://github.com/tpope/vim-markdown
let g:markdown_fenced_languages =
    \ ['html', 'python', 'lua', 'bash=sh', 'tex', 'go', 'c']
let g:markdown_syntax_conceal = 0

" For https://github.com/hrsh7th/vim-vsnip
let g:vsnip_extra_mapping = v:false
let g:vsnip_snippet_dir =
        \ expand('~/Documents/git-repos/dotfiles/config/nvim/snippets')
