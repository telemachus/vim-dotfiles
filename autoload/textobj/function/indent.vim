" Skip header matches inside strings and comments.
let s:skip = "synIDattr(synID(line('.'), col('.'), 1), 'name') =~? 'string\\|comment'"

" Select a function in formatted code: a line matching a:header, the lines
" indented beneath it, and (if a:closer is not empty) a closing line at the
" header's indentation that matches a:closer.
"
" See limitations.md for what this does not handle.
function! textobj#function#indent#select(header, closer, object_type) abort
    let l:cur = line('.')
    let l:lnum = l:cur
    while l:lnum > 0
        " Start at the end of the line so that a backward search can match
        " anywhere on it (e.g., an anonymous function in Lua). Don't use the
        " c flag: with c and a skip expression, Vim Classic 8.3 stops at the
        " first skipped match (see bug-report-vim-classic.md).
        call cursor(l:lnum, col([l:lnum, '$']))
        let l:start = search(a:header, 'bW', 0, 0, s:skip)
        if l:start == 0
            return 0
        endif
        let [l:sig_end, l:end] = s:Bounds(l:start, a:closer)
        if l:end >= l:cur
            return s:Range(a:object_type, l:start, l:sig_end, l:end,
                        \ !empty(a:closer))
        endif
        let l:lnum = l:start - 1
    endwhile
    return 0
endfunction

" Return the last line of the signature and the last line of the function.
" A line at the header's indentation that starts with ) or ] continues a
" multiline signature, as gofmt, black, and stylua format them.
function! s:Bounds(start, closer) abort
    let l:indent = indent(a:start)
    let l:sig_end = a:start
    let l:last = a:start
    let l:lnum = nextnonblank(a:start + 1)
    while l:lnum > 0
        if indent(l:lnum) <= l:indent
            if getline(l:lnum) !~# '^\s*[)\]]'
                break
            endif
            let l:sig_end = l:lnum
        endif
        let l:last = l:lnum
        let l:lnum = nextnonblank(l:lnum + 1)
    endwhile
    if empty(a:closer)
        return [l:sig_end, l:last]
    endif
    if l:lnum > 0 && getline(l:lnum) =~# a:closer
        return [l:sig_end, l:lnum]
    endif
    return [a:start, a:start]
endfunction

function! s:Range(object_type, start, sig_end, end, has_closer) abort
    if a:object_type ==# 'a'
        return ['V', [0, a:start, 1, 0], [0, a:end, 1, 0]]
    endif
    let l:body_end = a:has_closer ? a:end - 1 : a:end
    if l:body_end <= a:sig_end
        return 0
    endif
    return ['V', [0, a:sig_end + 1, 1, 0], [0, l:body_end, 1, 0]]
endfunction
