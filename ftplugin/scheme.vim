setl lispwords+=let-values,condition-case,with-input-from-string
setl lispwords+=with-output-to-string,handle-exceptions,call/cc,rec,receive
setl lispwords+=call-with-output-file

nnoremap <silent> == :call Scheme_indent_top_sexp()<cr>

fun! Scheme_indent_top_sexp()
    let pos = getpos('.')
    silent! exec 'normal! 99[(=%'
    call setpos('.', pos)
endfun
