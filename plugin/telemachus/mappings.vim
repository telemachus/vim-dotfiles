" Mappings for {neo,}vim and various plugins

let g:mapleader = ','

" Quickly remove highlighting.
nnoremap <silent> <leader><space> :noh<cr>

" Indent pastes properly.
nnoremap <silent> <leader>cp :set paste<cr>"*p`[v`]=:set nopaste<cr><esc>
nnoremap <silent> <leader>pi p`[v`]=

" Make Y behave like C and D.
map Y y$

" Use Q for gq
nnoremap Q gq
vnoremap Q gq

" '{mark} jumps to start of line with {mark}.
" `{mark} goes to the line and column where {mark} is set.
" I guess I thought I would want the `{mark} behavior more often than '{mark}?
" Joke is on me: I almost never use marks!
" nnoremap ' `
" nnoremap ` '

" Move visual blocks.
" This is neat, but I find it unsettling visually.
" Taken from https://vimrcfu.com/snippet/77
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv

" From Practical Vim (ed. 2, page 101)
"
" Use %% to get current buffer's directory for :edit, :write, :saveas, :read
" and :find.
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'

" A mapping for the :w !sudo tee % > /dev/null trick.
cnoremap w!! w !sudo tee % > /dev/null

" From tpope's unimpaired.vim via *Practical Vim*.
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> [t :tabprevious<CR>
nnoremap <silent> ]t :tabnext<CR>
nnoremap <silent> [T :tabfirst<CR>
nnoremap <silent> ]T :tablast<CR>
nnoremap <silent> [l :lprevious<CR>
nnoremap <silent> ]l :lnext<CR>
nnoremap <silent> [L :lclose<CR>
nnoremap <silent> ]L :lopen<CR>
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> [Q :cclose<CR>
nnoremap <silent> ]Q :copen<CR>

" For https://github.com/reedes/vim-textobj-quote
" map <silent> <leader>qc <Plug>ReplaceWithCurly
" map <silent> <leader>qs <Plug>ReplaceWithStraight

" For https://bitbucket.org/telemachus/vim-macrons
map <silent> <leader>mf <Plug>CharMacronFlip
map <silent> <leader>mo <Plug>MacronsOn
map <silent> <leader>nm <Plug>MacronsOff

" For https://github.com/machakann/vim-sandwich
" nmap s <Nop>
" xmap s <Nop>

" Yank the rest of the line or the entire line into the clipboard.
nnoremap <silent> <leader>y "+y$
nnoremap <silent> <leader>Y :call LineToClipboard()<CR>

" Yank visual selection into the clipboard.
vnoremap <leader>y "+y

" Stop vim-sandwich from stomping on s (sentence) text objects.
let g:textobj_sandwich_no_default_key_mappings = 1
if exists("g:loaded_sandwich")
    " Use |ib| and |ab| because *b* reminds me of bun.
    xmap ib <Plug>(textobj-sandwich-auto-i)
    omap ib <Plug>(textobj-sandwich-auto-i)
    xmap ab <Plug>(textobj-sandwich-auto-a)
    omap ab <Plug>(textobj-sandwich-auto-a)

    " I never seem to use these, and I want |ic| and |ac| for textobj-curly.
    " xmap iq <Plug>(textobj-sandwich-query-i)
    " omap iq <Plug>(textobj-sandwich-query-i)
    " xmap aq <Plug>(textobj-sandwich-query-a)
    " omap aq <Plug>(textobj-sandwich-query-a)
endif

" Taken from https://stackoverflow.com/a/52481454/26702
vnoremap <leader>b c<C-R>=trim(system('bitly -stdout -url ' .
            \ getreg('*'), getreg('"')))<CR><ESC>
