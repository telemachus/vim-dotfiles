setlocal comments=
setlocal formatoptions=1tn
setlocal textwidth=80
setlocal colorcolumn=-2
setlocal list
setlocal lazyredraw

setlocal formatprg=par\ -w75

" 1., 2., 3., etc.
setlocal formatlistpat=^\\s*[0-9]\\+\\.\\s\\+
" a. or A., etc
setlocal formatlistpat+=\\\|^\\s*[a-zA-Z]\\+\\.\\s\\+
" Various bullets
setlocal formatlistpat+=\\\|^\\s*[-–—+o*•]\\s\\+
" [1] or [1]:
setlocal formatlistpat+=\\\|^\\s*\\[[0-9]\\+\\]:\\?\\s\\+
" (1) or (1):
setlocal formatlistpat+=\\\|^\\s*([0-9]\\+):\\?\\s\\+

call textobj#quote#init({'educate': 1})
