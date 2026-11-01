setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

" Function text objects (if, af) for vim-textobj-function.
let b:textobj_function_select = function('textobj#function#indent#select',
            \ ['\<function\>', '^\s*end\>'])
let b:undo_ftplugin = (exists('b:undo_ftplugin') ? b:undo_ftplugin . '|' : '')
            \ . 'unlet! b:textobj_function_select'
