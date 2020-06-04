" Soft wrap, please
setlocal textwidth=80
setlocal list
setlocal formatoptions=1tn
setlocal comments=
setlocal lazyredraw
if exists('b:match_words')
    let b:match_words.=',(:),[:],<:>,“:”,‘:’\(\w\)\@!'
else
    let b:match_words='(:),[:],<:>,“:”,‘:’\(\w\)\@!'
endif
