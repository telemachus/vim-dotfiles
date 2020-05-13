function! LineToClipboard()
    let @+ = getline('.')
endfunction

" Thanks to https://github.com/mgedmin/dotvim/blob/master/autoload/python.vim
function! IsMarkdownCode()
    let line = line(".")
    let synstack = synstack(line, 1)
    let syn = empty(synstack) ? "" : synIDattr(synstack[0], "name")
    " This is for tpope/vim-markdown.
    " If you use plasticboy/vim-markdown, the match is just 'mkdCode'.
    " If you use gabrielelana/vim-markdown, you need to match these three:
    " 'markdownInlineCode', 'markdownCodeBlock', and 'markdownFencedCodeBlock'.
    let is_markdown_code = syn =~# 'markdown\(Code\(Block\)\?\|Highlight*\)'
    return is_markdown_code
endfunction
