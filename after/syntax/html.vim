" Highlight Dreyer’s banned words and phrases as errors {{{
syntax keyword dreyerBanned very rather really quite just so
syntax keyword dreyerBanned pretty surely actually
syntax match ofCourse "of course"
syntax match inFact "in fact"
syntax match thatSaid "that said"

highlight link dreyerBanned Error
highlight link ofCourse Error
highlight link inFact Error
highlight link thatSaid Error
" }}}
