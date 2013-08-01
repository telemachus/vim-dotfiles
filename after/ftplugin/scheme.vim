" Basic settings {{{
" Restrict the characters that AutoPairs works on. In a nutshell, don't
" work on single quotes.
let b:AutoPairs = {'(':')', '[':']', '{':'}', '"':'"'}
" }}}

" Highlight additional Chicken keywords {{{
syn keyword schemeSyntax let-values condition-case with-input-from-string
syn keyword schemeSyntax with-output-to-string handle-exceptions call/cc
syn keyword schemeSyntax rec receive call-with-output-file
" }}}
