setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal textwidth=79
setlocal colorcolumn=80
setlocal autoindent
setlocal encoding=utf-8
let python_highlight_all=1

highlight BadWhitespace ctermbg=red guibg=darkred
match BadWhitespace /\s\+$/
