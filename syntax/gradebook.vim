" Vim syntax file
" Language:     Gradebook (simple syntax for .gradebook files)
" Maintainer:   Peter Aronoff <peter@aronoff.org>

" Quit when a (custom) syntax file was already loaded
if exists('b:current_syntax')
    finish
endif

" Keywords
syn keyword gbKeyword NULL EXC ABS
syn keyword gbTodo contained TODO
syn keyword gbFixme contained FIXME

" Grade: integer number or floating point number with or without a dot
syn match gbGrade '-\=\d\+\.\=\d*'

syn match gbComma ','
syn match gbLastName '^[A-Z][[:alpha:]]\+'
syn match gbFirstName '[A-Z][[:alpha:]]\+' nextgroup=gbGrade,gbKeyword skipwhite

" Comments: single line only, beginning with '//'
syn match gbComment '\/\/.*$' contains=gbTodo,gbFixme

let b:current_syntax = 'gradebook'

hi def link gbKeyword Keyword
hi def link gbComma Operator
hi def link gbTodo Todo
hi def link gbFixme Error
hi def link gbGrade Number
hi def link gbComment Comment
hi gbLastName term=underline cterm=underline,bold gui=underline,bold
hi gbTodo gui=standout

" vim: set ts=8 sw=4 tw=75 :
