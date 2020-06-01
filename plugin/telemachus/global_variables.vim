" Set global variables for {neo,}vim and plugins

" See :help ft-sh-syntax
let g:is_bash = 1

" Help neovim deal with snakes; disable node, ruby, and perl too
if has('nvim')
    let g:python3_host_prog = '/usr/local/bin/python3'
    let g:loaded_python_provider = 0
    let g:loaded_node_provider = 0
    let g:loaded_ruby_provider = 0
    let g:loaded_perl_provider = 0
endif

" See :help matchparen
let g:matchparen_timeout = 20
let g:matchparen_insert_timeout = 20

" See g:tex_conceal and g:tex_flavor
let g:tex_conceal=''
let g:tex_flavor='latex'

" See :help html-indent.
let g:html_indent_script1 = 'inc'
let g:html_indent_style1 = 'inc'

let g:gist_clip_command='pbcopy'
let g:gist_show_privates = 1
let g:gist_detect_filetype = 1
let g:github_user = 'telemachus'

" For https://github.com/tpope/vim-dispatch
let g:dispatch_no_maps = 1

" For https://github.com/farmergreg/vim-lastplace
" Uncomment this if I want files to open with all folds closed.
" let g:lastplace_open_folds = 0

" For https://github.com/tpope/vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'lua', 'bash=sh', 'tex']
let g:markdown_syntax_conceal = 0

" For https://github.com/SirVer/ultisnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
