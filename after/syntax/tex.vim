" Highlight Dreyer’s banned words and phrases as errors {{{
syntax keyword dreyerBanned very rather really quite just so
            \ containedin=@texDocGroup,@texPartGroup,@texChapterGroup,@texSectionGroup,@texSubSectionGroup,@texSubSubSectionGroup,@texParaGroup
syntax keyword dreyerBanned pretty surely actually
            \ containedin=@texDocGroup,@texPartGroup,@texChapterGroup,@texSectionGroup,@texSubSectionGroup,@texSubSubSectionGroup,@texParaGroup
syntax match ofCourse "of course"
            \ containedin=@texDocGroup,@texPartGroup,@texChapterGroup,@texSectionGroup,@texSubSectionGroup,@texSubSubSectionGroup,@texParaGroup
syntax match inFact "in fact"
            \ containedin=@texDocGroup,@texPartGroup,@texChapterGroup,@texSectionGroup,@texSubSectionGroup,@texSubSubSectionGroup,@texParaGroup
syntax match thatSaid "that said"
            \ containedin=@texDocGroup,@texPartGroup,@texChapterGroup,@texSectionGroup,@texSubSectionGroup,@texSubSubSectionGroup,@texParaGroup

highlight link dreyerBanned Error
highlight link ofCourse Error
highlight link inFact Error
highlight link thatSaid Error
" }}}
