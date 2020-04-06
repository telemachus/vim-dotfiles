" Additional recipes for https://github.com/machakann/vim-sandwich
" Last changed: 2020-04-06

let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)

" 1. Teach vim-sandwich about “foo” and ‘foo’
" 2. Teach vim-sandwich about ( foo ), [ foo ], and { foo }
let g:sandwich#recipes += [
	\ {'buns': ["“", "”"], 'nesting': 0, 'input': ['q"']},
	\ {'buns': ["‘", "’"], 'nesting': 0, 'input': ["q'"]},
	\ {'buns': ["( ", " )"], 'nesting': 1, 'match_syntax': 1,
	\  'input': ['('] },
	\ {'buns': ["[ ", " ]"], 'nesting': 1, 'match_syntax': 1,
	\  'input': ['['] },
	\ {'buns': ["{ ", " }"], 'nesting': 1, 'match_syntax': 1,
	\  'input': ['{'] },
	\ ]
