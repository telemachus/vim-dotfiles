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
"   let syn = empty(synstack) ? "" : synIDattr(synstack[0], "name")
"   let in_docstring = syn =~# 'python\(Raw\)\=String'
"   return in_docstring
" endfunction

" Taken from Stack Overflow: https://stackoverflow.com/a/4028423/26702
function! GetPythonTextWidth()
    if !exists('g:python_normal_text_width')
        let normal_text_width = 79
    else
        let normal_text_width = g:python_normal_text_width
    endif

    if !exists('g:python_comment_text_width')
        let comment_text_width = 72
    else
        let comment_text_width = g:python_comment_text_width
    endif

    let cur_syntax = synIDattr(synIDtrans(synID(line("."), col("."), 0)), "name")
    if cur_syntax == "Comment"
        return comment_text_width
    elseif cur_syntax == "String"
        " Check to see if we're in a docstring
        let lnum = line(".")
        while lnum >= 1 && (synIDattr(synIDtrans(synID(lnum, col([lnum, "$"]) - 1, 0)), "name") == "String" || match(getline(lnum), '\v^\s*$') > -1)
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
