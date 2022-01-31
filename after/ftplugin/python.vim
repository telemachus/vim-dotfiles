setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal textwidth=88
setlocal colorcolumn=89
setlocal autoindent
setlocal encoding=utf-8
let python_highlight_all=1

highlight BadWhitespace ctermbg=black guibg=black
match BadWhitespace /\s\+$/
