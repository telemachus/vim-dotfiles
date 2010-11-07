" Save as conceal.vim at ~/.vim/bundle/ruby-conceal/after/syntax/ruby if you
" use Pathogen or at ~/.vim/after/syntax/ruby otherwise
if !has('conceal')
    finish
endif

syntax keyword rubyControl not conceal cchar=¬
syntax keyword rubyKeyword lambda conceal cchar=λ


hi! link Conceal Operator
set conceallevel=2
