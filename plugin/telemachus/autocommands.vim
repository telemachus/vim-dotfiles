" My autocommands
" Last changed: 2020-04-06
"
" Define an empty augroup, so that I only have to run autocmd! once.
augroup vim_config
    autocmd!
augroup END

" My header files are C, not C++
autocmd vim_config BufNewFile,BufNew,BufRead *.h setlocal filetype=c

autocmd vim_config BufNewFile,BufNew,BufRead *.rockspec
      \ setlocal filetype=lua

" Have Goyo engage Limelight
autocmd vim_config User GoyoEnter Limelight
autocmd vim_config User GoyoLeave Limelight!

" From :help incsearch—I don't understand why this is not the default!
autocmd vim_config CmdlineEnter /,\? :set hlsearch
autocmd vim_config CmdlineLeave /,\? :set nohlsearch

" Enable syntax highlighting when buffers were loaded through :bufdo, which
" disables the Syntax autocmd event to speed up processing.
    " Filetype processing does happen, so we can detect a buffer
    " initially loaded during :bufdo through a set filetype, but missing
    " b:current_syntax. Also don't do this when the user explicitly turned
    " off syntax highlighting via :syntax off. Note: Must allow nesting of
    " autocmds so that the :syntax enable triggers the ColorScheme event.
    " Otherwise, some highlighting groups may not be restored properly.
    autocmd vim_config BufWinEnter * nested if exists('syntax_on')
          \ && ! exists('b:current_syntax')
          \ && ! empty(&l:filetype) | syntax enable | endif

    " The above does not handle reloading via :bufdo edit!, because the
    " b:current_syntax variable is not cleared by that. During the :bufdo,
    " 'eventignore' contains "Syntax", so this can be used to detect this
    " situation when the file is re-read into the buffer. Due to the
    " 'eventignore', an immediate :syntax enable is ignored, but by clearing
    " b:current_syntax, the above handler will do this when the reloaded
    " buffer is displayed in a window again.
    autocmd vim_config BufRead * if exists('syntax_on')
          \ && exists('b:current_syntax')
          \ && ! empty(&l:filetype)
          \ && index(split(&eventignore, ','), 'Syntax') != -1 |
          \ unlet! b:current_syntax | endif
