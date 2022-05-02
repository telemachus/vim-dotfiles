" Mappings for {neo,}vim and various plugins

" Indent pastes properly.
nnoremap <silent> <Leader>pi p`[v`]=

" Make Y behave like C and D.
map Y y$

" Use Q for gq
nnoremap Q gq
vnoremap Q gq

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

" For https://bitbucket.org/telemachus/vim-macrons
" map <silent> <Leader>mf <Plug>CharMacronFlip
" map <silent> <Leader>mo <Plug>MacronsOn
" map <silent> <Leader>nm <Plug>MacronsOff

" Yank the rest of the line or the entire line into the clipboard.
nnoremap <silent> <Leader>y "+y$
nnoremap <silent> <Leader>Y :call LineToClipboard()<CR>

" Yank visual selection into the clipboard.
vnoremap <Leader>y "+y

" Stop vim-sandwich from stomping on s (sentence) text objects.
let g:textobj_sandwich_no_default_key_mappings = 1
" Use |ib| and |ab| because *b* reminds me of bun.
xmap ib <Plug>(textobj-sandwich-auto-i)
omap ib <Plug>(textobj-sandwich-auto-i)
xmap ab <Plug>(textobj-sandwich-auto-a)
omap ab <Plug>(textobj-sandwich-auto-a)

" Taken from https://stackoverflow.com/a/52481454/26702
vnoremap <silent> <Leader>b c<C-R>=trim(system('bitly -stdout -url ' .
            \ trim(getreg('*')), getreg('"')))<CR><ESC>

" Edit and source $MYVIMRC
nnoremap <Leader>ev :split $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" Make a WORD all uppercase after the fact while in insert mode
" Suggested by Steve Losh's Learn Vimscript the Hard Way
inoremap <C-U> <Esc>bgUiWea

" Make WORD under cursor all uppercase while in normal mode
nnoremap <Leader>u gUiW
