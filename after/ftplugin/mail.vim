setlocal comments=
setlocal formatoptions=1tnw
setlocal textwidth=80
setlocal colorcolumn=-2
setlocal list
setlocal lazyredraw
setlocal spell
setlocal formatprg=par\ -w75
if exists('b:match_words')
    let b:match_words.=',(:),[:],<:>,“:”,‘:’\(\w\)\@!'
else
    let b:match_words='(:),[:],<:>,“:”,‘:’\(\w\)\@!'
endif
