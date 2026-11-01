setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal textwidth=88
setlocal autoindent
setlocal encoding=utf-8
let python_highlight_all=1

highlight BadWhitespace ctermbg=black guibg=black
match BadWhitespace /\s\+$/

" Function text objects (if, af) for vim-textobj-function.
let b:textobj_function_select = function('textobj#function#indent#select',
            \ ['^\s*\(async\s\+\)\?def\>', ''])
let b:undo_ftplugin = (exists('b:undo_ftplugin') ? b:undo_ftplugin . '|' : '')
            \ . 'unlet! b:textobj_function_select'
