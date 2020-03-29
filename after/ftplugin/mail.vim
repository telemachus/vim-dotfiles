setlocal comments=

" 1. or a. or A. etc
setlocal formatlistpat=^\\s*\\([0-9]\\+\\\|[a-zA-Z]\\+\\)\\.\\s\\+
" Various bullets
setlocal formatlistpat+=\\\|^\\s*[-–—+o*•]\\s\\+
" [1] or [1]:
setlocal formatlistpat+=\\\|^\\s*\\[[0-9]\\+\\]:\\?\\s\\+
" (1) or (1):
setlocal formatlistpat+=\\\|^\\s*([0-9]\\+):\\?\\s\\+

call textobj#quote#init({'educate': 1})
