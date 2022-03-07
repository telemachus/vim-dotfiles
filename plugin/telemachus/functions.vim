set encoding=utf-8
scriptencoding utf-8

function! LineToClipboard()
    let @+ = getline('.')
endfunction

" https://github.com/mgedmin/dotvim/blob/master/autoload/python.vim
" He puts it in autoload/python.vim, which makes some sense to me.
" function! PythonInDocstring()
"   let line = line(".")
"   " nb: there might be a pythonSpaceError in the syntax stack hiding the
"   " pythonString
"   let synstack = synstack(line, 1)
"   let syn = empty(synstack) ? '' : synIDattr(synstack[0], 'name')
"   let in_docstring = syn =~# 'python\(Raw\)\=String'
"   return in_docstring
" endfunction

" Taken from Stack Overflow: https://stackoverflow.com/a/4028423/26702
" Python line lengths: 88 for code and 81 for comments and docstrings.
" Black uses 88 as the standard line length for lines, and I will go along.
" The non-code length gives me essentially the same difference between code,
" comments, and docstrings that PEP8 requires. (PEP8 requires 79 and 72.)
function! GetPythonTextWidth()
    if !exists('g:python_normal_text_width')
        let normal_text_width = 88
    else
        let normal_text_width = g:python_normal_text_width
    endif

    if !exists('g:python_comment_text_width')
        let comment_text_width = 81
    else
        let comment_text_width = g:python_comment_text_width
    endif

    let cur_syntax = synIDattr(synIDtrans(synID(line('.'), col('.'), 0)), 'name')
    if cur_syntax ==# 'Comment'
        return comment_text_width
    elseif cur_syntax ==# 'String'
        " Check to see if we're in a docstring
        let lnum = line('.')
        while lnum >= 1 && (synIDattr(synIDtrans(synID(lnum, col([lnum, '$']) - 1, 0)), 'name') ==# 'String' || match(getline(lnum), '\v^\s*$') > -1)
            if match(getline(lnum), "\\('''\\|\"\"\"\\)") > -1
                " Assume that any longstring is a docstring
                return comment_text_width
            endif
            let lnum -= 1
        endwhile
    endif

    return normal_text_width
endfunction

" Thanks to https://github.com/mgedmin/dotvim/blob/master/autoload/python.vim
function! IsMarkdownCode()
    let line = line('.')
    let synstack = synstack(line, 1)
    let syn = empty(synstack) ? '' : synIDattr(synstack[0], 'name')
    " This is for tpope/vim-markdown.
    " If you use plasticboy/vim-markdown, the match is just 'mkdCode'.
    " If you use gabrielelana/vim-markdown, you need to match these three:
    " 'markdownInlineCode', 'markdownCodeBlock', and 'markdownFencedCodeBlock'.
    let is_markdown_code = syn =~# 'markdown\(Code\(Block\)\?\|Highlight*\)'
    return is_markdown_code
endfunction

" These come from Tim Pope’s Pathogen: https://github.com/tpope/vim-pathogen

" \ on Windows unless shellslash is set, / everywhere else.
function! Slash() abort
    return !exists('+shellslash') || &shellslash ? '/' : '\'
endfunction

" Backport of fnameescape().
function! FnameEscape(string) abort
    if exists('*fnameescape')
        return fnameescape(a:string)
    elseif a:string ==# '-'
        return '\-'
    else
        return substitute(escape(a:string," \t\n*?[{`$\\%#'\"|!<"),'^[+>]','\\&','')
    endif
endfunction

" Split a path into a list.
function! PathSplit(path) abort
    if type(a:path) == type([]) | return a:path | endif
    if empty(a:path) | return [] | endif
    let split = split(a:path,'\\\@<!\%(\\\\\)*\zs,')
    return map(split,'substitute(v:val,''\\\([\\,]\)'',''\1'',"g")')
endfunction

" Invoke :helptags on all non-$VIM doc directories in runtimepath.
function! BuildDocs() abort
    let sep = Slash()
    for glob in PathSplit(&runtimepath)
        for dir in map(split(glob(glob), "\n"), 'v:val.sep."/doc/".sep')
            if (dir)[0 : strlen($VIMRUNTIME)] !=# $VIMRUNTIME.sep && filewritable(dir) == 2 && !empty(split(glob(dir.'*.txt'))) && (!filereadable(dir.'tags') || filewritable(dir.'tags'))
                silent! execute 'helptags' FnameEscape(dir)
            endif
        endfor
    endfor
endfunction

command! -bar Helptags :call BuildDocs()

function! Reply()
    if line('$') > 1
        call append(line('$'), ['', ''])
        call setpos('.', [0, line('$'), 0, 0])
    endif
endfunction

command! -bar Reply :silent call Reply()

" This fails vint for the following reasons:
"   + Command relies on user settings (Google Style Guide Fragile)
"   + Command has unintended side effects (Google Style Guide Dangerous)
" function! CleanReply()
"     if line('$') > 1
"         :2,$!par w72q
"         " I found these regexes on this site: https://bit.ly/3z8Lf3h.
"         :2,$s/^.\+\ze\n\(>*$\)\@!/\0 /e
"         :2,$s/^>*\zs\s\+$//e
"         call append(line('$'), ['', ''])
"         call setpos('.', [0, line('$'), 0, 0])
"     endif
" endfunction
"
" command! -bar CleanReply :silent call CleanReply()

function! Bitly()
    let bitlyURL = trim(system('bitly -stdout'))
    execute "normal! i\<C-r>\<C-r>=bitlyURL\<CR>\<Esc>"
endfunction

command! -bar Bitly :silent call Bitly()

function! HighlightPosition() abort
    set cursorline
    redraw
    sleep 1
    set nocursorline
endfunction

function! s:strip_newlines(str)
    return substitute(a:str, '\v^\n*(.{-})\n*$', '\1', '')
endfunction

function! Lint(cmd) abort
    " Inspired by vim-filetype-formatter and vim-go:
    " https://github.com/pappasam/vim-filetype-formatter
    " https://github.com/fatih/vim-go

    let stdin = join(getline(1, '$'), "\n")
    let results_raw = system(a:cmd, stdin)
    let results = s:strip_newlines(results_raw)

    " Return early if there was an error.
    if v:shell_error != 0
        let results = substitute(results, '<standard input>', expand('%'), 'g')
        let title = expand(a:cmd) . ' ' . expand('%')
        lexpr results
        call setloclist(0, [], 'a', {'title' : title})
        return
    endif

    lexpr []
    let tempfile = tempname()
    call writefile(split(results, "\n"), tempfile)
    let line_offset = len(readfile(tempfile)) - line('$')
    let line_number = line('.') + line_offset
    let original_column = col('.')
    let original_line = getline('.')
    let tempundofile = tempname()
    execute 'wundo! ' . tempundofile
    call system('chmod --reference=' . expand('%') . ' '
            \ . shellescape(tempfile))
    call rename(tempfile, expand('%'))
    silent edit!
    silent! execute 'rundo ' . tempundofile
    call delete(tempundofile)
    call cursor(line_number, original_column +
            \ (len(getline(line_number)) - len(original_line)))
endfunction

command! -nargs=1 -bar Lint :silent! call Lint(<f-args>)
