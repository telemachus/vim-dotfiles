set formatprg=

" Function text objects (if, af) for vim-textobj-function.
let b:textobj_function_select = function('textobj#function#indent#select',
            \ ['\<func\>.*[{(]$', '^\s*}'])
let b:undo_ftplugin = (exists('b:undo_ftplugin') ? b:undo_ftplugin . '|' : '')
            \ . 'unlet! b:textobj_function_select'
