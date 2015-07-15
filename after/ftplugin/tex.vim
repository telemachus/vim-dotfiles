" Basic settings {{{
setlocal tabstop=8 softtabstop=4 shiftwidth=4 expandtab

" Set make to build and open the pdf
setlocal makeprg=latexmk\ -xelatex\ -bibtex\ %\ &&\ open\ %:r.pdf

" Soft wrap, please
setlocal textwidth=0 wrapmargin=0
setlocal wrap linebreak nolist
setlocal showbreak=…
set lazyredraw
" }}}

" Automatically swap `` for " and ` for ' {{{
" The TexQuotes method is taken wholesale from auctex.vim.
" http://www.vim.org/scripts/script.php?script_id=162
"
" The TexQuote method is obviously just a simple-minded adaptation.
" Smart quotes.
" Thanks to Ron Aaron <ron@mossbayeng.com>.
function! s:TexQuotes()
    let insert = '"'
    let left = getline('.')[col('.')-2]
    if left =~ '^\(\|\s\)$'
        let insert = '``'
    elseif left == '\'
        let insert = '"'
    endif
    return insert
endfunction

function! s:TexQuote()
    let insert = "'"
    let left = getline('.')[col('.')-2]
    if left =~ '^\(\|\s\)$'
        let insert = '`'
    elseif left == '\'
        let insert = "'"
    endif
    return insert
endfunction

inoremap <silent> <buffer> " <C-R>=<SID>TexQuotes()<CR>
inoremap <silent> <buffer> ' <C-R>=<SID>TexQuote()<CR>
" }}}

" Conceal {{{
if !has('conceal')
    finish
endif

syntax match texString "`" conceal cchar='
syntax match texString "``" conceal cchar="
set conceallevel=2

" Don't highlight the changes made by conceal since that makes opening
" quotes look different from closing quotes and from their surroundings.
hi clear Conceal
" }}}

" Add Natbib syntax highlighting {{{
syn match texRefZone '\\citeasnoun\%([tp]\*\=\)\='
            \ nextgroup=texRefOption,texCite
syn match texRefZone '\\citeal\%([tp]\*\=\)\='
            \ nextgroup=texRefOption,texCite
syn match texRefZone '\\citeyearpar\%(\*\=\)\='
            \ nextgroup=texRefOption,texCite
syn match texRefZone '\\citeauthor\%(\*\=\)\='
            \ nextgroup=texRefOption,texCite
" }}}

" Specialized fold-marker [[-,-]] {{{
set foldmarker=[[-,-]]
" }}}
