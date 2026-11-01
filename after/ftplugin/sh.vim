" Function text objects (if, af) for vim-textobj-function.
let b:textobj_function_select = function('textobj#function#indent#select',
            \ ['^\s*\(function\s\+\)\?[A-Za-z_][A-Za-z0-9_-]*\s*()', '^\s*}'])
let b:undo_ftplugin = (exists('b:undo_ftplugin') ? b:undo_ftplugin . '|' : '')
            \ . 'unlet! b:textobj_function_select'
