autocmd BufNewFile,BufNew,BufRead *.tex
      \ if &ft =~# '^plaintex$' |
      \   set ft=tex |
      \ else |
      \   setf tex |
      \ endif
