setlocal comments=
setlocal formatoptions=1tnw
setlocal textwidth=75
setlocal colorcolumn=77
setlocal list
setlocal lazyredraw
setlocal spell
setlocal formatprg=par\ -w75q
if exists('b:match_words')
    let b:match_words.=',(:),[:],<:>,“:”,‘:’\(\w\)\@!'
else
    let b:match_words='(:),[:],<:>,“:”,‘:’\(\w\)\@!'
endif
