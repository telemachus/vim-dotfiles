setlocal comments=
setlocal formatoptions=1tnaw
setlocal textwidth=72
setlocal colorcolumn=-2
setlocal list
setlocal lazyredraw
setlocal spell
setlocal formatprg=par\ -w72q
if exists('b:match_words')
    let b:match_words.=',(:),[:],<:>,“:”,‘:’\(\w\)\@!'
else
    let b:match_words='(:),[:],<:>,“:”,‘:’\(\w\)\@!'
endif
