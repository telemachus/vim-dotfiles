" Additional recipes for https://github.com/machakann/vim-sandwich

scriptencoding utf-8

let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)

" Teach vim-sandwich about “foo” and ‘foo’.
let g:sandwich#recipes += [
            \ {'buns': ['“', '”'], 'nesting': 0, 'input': ['q"']},
            \ {'buns': ['‘', '’'], 'nesting': 0, 'input': ["q'"]},
            \ ]
