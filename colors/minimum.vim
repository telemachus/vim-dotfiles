" Name:         minimum
" Description:  A minimal, light colorscheme for {neo,}vim
" Author:       Peter Aronoff <peteraronoff@fastmail.com>
" Maintainer:   Peter Aronoff <peteraronoff@fastmail.com>
" Website:      https://github.com/telemachus/minimum
" License:      Vim License (see `:help license`)
" Last Change:  2024 Aug 18

" Generated by Colortemplate v2.2.3

set background=light

hi clear
let g:colors_name = 'minimum'

let s:t_Co = has('gui_running') ? -1 : (&t_Co ?? 0)

hi! link CurSearch Visual
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi! link CursorColumn ColorColumn
hi! link CursorLine Visual
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link DiffText DiffChange
hi! link FoldColumn Folded
hi! link IncSearch Visual
hi! link IncReplace DiffChange
hi! link CursorLineNr LineNr
hi! link LineNrBelow LineNrAbove
hi! link NormalFloat Normal
hi! link FloatTitle Title
hi! link FloatFooter FloatTitle
hi! link PmenuSel Visual
hi! link PmenuKind Pmenu
hi! link PmenuKindSel Visual
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel Visual
hi! link PmenuSbar Pmenu
hi! link PmenuThumb Pmenu
hi! link QuickFixLine Visual
hi! link VisualNOS Visual
hi! link SnippetTabStop Visual
hi! link SpellCap SpellBad
hi! link SpellLocal SpellBad
hi! link SpellRare SpellBad
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLineSel StatusLine
hi! link Character String
hi! link Float Number
hi! link Identifier Constant
hi! link Function Constant
hi! link Statement Constant
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc
hi! link Type PreProc
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link gitcommitComment Comment
hi! link gitcommitBranch gitcommitHeader
hi! link gitcommitDiscardedFile gitcommitDiscardedType
hi! link gitcommitSelectedType gitcommitDiscardedType
hi! link gitcommitSelectedFile gitcommitDiscardedType
hi! link gitcommitSummary Conditional
hi! link gitcommitFirstLine gitcommitSummary
hi! link gitcommitUntrackedFile gitcommitDiscardedType
hi! link difffLine diffIndexLine
hi! link diffAdded DiffAdd
hi! link diffNewFile DiffAdd
hi! link diffOldFile DiffChange
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete
hi! link mailEmail mailURL
hi! link mailQuoted1 mailQuoted
hi! link mailQuoted3 mailQuoted
hi! link mailQuoted5 mailQuoted
hi! link mailQuoted4 mailQuoted2
hi! link mailQuoted6 mailQuoted2
hi! link vimCommentTitle Comment
hi! link debugBreakpoint ModeMsg
hi! link debugPC CursorLine

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#000000', '#800000', '#194a1f', '#808000', '#000075', '#8b008b', '#469990', '#cfc6c8', '#737373', '#d20f2c', '#3cb44d', '#ffe119', '#4363d8', '#f032e6', '#42d4f4', '#ffffff']
endif
hi Normal guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#f0f1f3 gui=NONE cterm=NONE
hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
hi Directory guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi DiffAdd guifg=#194a1f guibg=#aaffc3 gui=NONE cterm=NONE
hi DiffChange guifg=#808000 guibg=#fffac8 gui=NONE cterm=NONE
hi DiffDelete guifg=#800000 guibg=#fabed4 gui=NONE cterm=NONE
hi diffFile guifg=#4363d8 guibg=#ffffff gui=NONE cterm=NONE
hi EndOfBuffer guifg=#737373 guibg=#ffffff gui=NONE cterm=NONE
hi ErrorMsg guifg=#d20f2c guibg=#ffffff gui=NONE cterm=NONE
hi FoldColumn guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi Folded guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi LineNr guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi LineNrAbove guifg=#cfc6c8 guibg=#ffffff gui=NONE cterm=NONE
hi MatchParen guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi ModeMsg guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi MoreMsg guifg=#737373 guibg=#ffffff gui=NONE cterm=NONE
hi NonText guifg=#f0f1f3 guibg=#ffffff gui=NONE cterm=NONE
hi Pmenu guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi Question guifg=#737373 guibg=#ffffff gui=NONE cterm=NONE
hi Search guifg=#090909 guibg=#fffac8 gui=bold cterm=bold
hi SignColumn guifg=#737373 guibg=#ffffff gui=NONE cterm=NONE
hi SpecialKey guifg=#737373 guibg=#ffffff gui=NONE cterm=NONE
hi SpellBad guifg=#737373 guibg=#ffffff gui=undercurl cterm=underline
hi SpellCap guifg=#737373 guibg=#ffffff gui=undercurl cterm=underline
hi SpellLocal guifg=#737373 guibg=#ffffff gui=undercurl cterm=underline
hi SpellRare guifg=#737373 guibg=#ffffff gui=undercurl cterm=underline
hi StatusLine guifg=#737373 guibg=#f0f1f3 gui=NONE cterm=NONE
hi StatusLineNC guifg=#737373 guibg=#ffffff gui=NONE cterm=NONE
hi TabLine guifg=#cfc6c8 guibg=#ffffff gui=NONE cterm=NONE
hi TabLineFill guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi TabLineSel guifg=#090909 guibg=#f0f1f3 gui=bold cterm=bold
hi Title guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi VertSplit guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi Visual guifg=#090909 guibg=#d5e5f6 gui=bold cterm=bold
hi WarningMsg guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi WildMenu guifg=#090909 guibg=#737373 gui=bold cterm=bold
hi WinBar guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi WinBarNC guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi Comment guifg=#737373 guibg=#ffffff gui=NONE cterm=NONE
hi Conditional guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi Repeat guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi Label guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi Operator guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi Keyword guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi Exception guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi Constant guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi Error guifg=#d20f2c guibg=#ffffff gui=bold cterm=bold
hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi PreProc guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi Special guifg=#090909 guibg=#ffffff gui=NONE cterm=NONE
hi Todo guifg=#ffe119 guibg=#ffffff gui=bold cterm=bold
hi Underlined guifg=#090909 guibg=#ffffff gui=underline cterm=underline
hi ToolbarLine guifg=NONE guibg=#ffffff gui=NONE cterm=NONE
hi ToolbarButton guifg=#090909 guibg=#ffffff gui=bold cterm=bold
hi gitcommitHeader guifg=#737373 guibg=#ffffff gui=bold cterm=bold
hi gitcommitDiscardedType guifg=#737373 guibg=#ffffff gui=NONE cterm=NONE

if s:t_Co >= 256
  hi Normal ctermfg=232 ctermbg=231 cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=255 cterm=NONE
  hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Directory ctermfg=NONE ctermbg=NONE cterm=bold
  hi DiffAdd ctermfg=22 ctermbg=86 cterm=NONE
  hi DiffChange ctermfg=3 ctermbg=229 cterm=NONE
  hi DiffDelete ctermfg=1 ctermbg=219 cterm=NONE
  hi diffFile ctermfg=21 ctermbg=231 cterm=NONE
  hi EndOfBuffer ctermfg=243 ctermbg=231 cterm=NONE
  hi ErrorMsg ctermfg=160 ctermbg=231 cterm=NONE
  hi FoldColumn ctermfg=232 ctermbg=231 cterm=NONE
  hi Folded ctermfg=232 ctermbg=231 cterm=NONE
  hi LineNr ctermfg=232 ctermbg=231 cterm=bold
  hi LineNrAbove ctermfg=251 ctermbg=231 cterm=NONE
  hi MatchParen ctermfg=232 ctermbg=231 cterm=bold
  hi ModeMsg ctermfg=232 ctermbg=231 cterm=bold
  hi MoreMsg ctermfg=243 ctermbg=231 cterm=NONE
  hi NonText ctermfg=255 ctermbg=231 cterm=NONE
  hi Pmenu ctermfg=232 ctermbg=231 cterm=NONE
  hi Question ctermfg=243 ctermbg=231 cterm=NONE
  hi Search ctermfg=232 ctermbg=229 cterm=bold
  hi SignColumn ctermfg=243 ctermbg=231 cterm=NONE
  hi SpecialKey ctermfg=243 ctermbg=231 cterm=NONE
  hi SpellBad ctermfg=243 ctermbg=231 cterm=underline
  hi SpellCap ctermfg=243 ctermbg=231 cterm=underline
  hi SpellLocal ctermfg=243 ctermbg=231 cterm=underline
  hi SpellRare ctermfg=243 ctermbg=231 cterm=underline
  hi StatusLine ctermfg=243 ctermbg=255 cterm=NONE
  hi StatusLineNC ctermfg=243 ctermbg=231 cterm=NONE
  hi TabLine ctermfg=251 ctermbg=231 cterm=NONE
  hi TabLineFill ctermfg=232 ctermbg=231 cterm=NONE
  hi TabLineSel ctermfg=232 ctermbg=255 cterm=bold
  hi Title ctermfg=232 ctermbg=231 cterm=bold
  hi VertSplit ctermfg=232 ctermbg=231 cterm=NONE
  hi Visual ctermfg=232 ctermbg=51 cterm=bold
  hi WarningMsg ctermfg=232 ctermbg=231 cterm=NONE
  hi WildMenu ctermfg=232 ctermbg=243 cterm=bold
  hi WinBar ctermfg=232 ctermbg=231 cterm=bold
  hi WinBarNC ctermfg=232 ctermbg=231 cterm=NONE
  hi Comment ctermfg=243 ctermbg=231 cterm=NONE
  hi Conditional ctermfg=232 ctermbg=231 cterm=bold
  hi Repeat ctermfg=232 ctermbg=231 cterm=bold
  hi Label ctermfg=232 ctermbg=231 cterm=bold
  hi Operator ctermfg=232 ctermbg=231 cterm=bold
  hi Keyword ctermfg=232 ctermbg=231 cterm=bold
  hi Exception ctermfg=232 ctermbg=231 cterm=bold
  hi Constant ctermfg=232 ctermbg=231 cterm=NONE
  hi Error ctermfg=160 ctermbg=231 cterm=bold
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=232 ctermbg=231 cterm=NONE
  hi Special ctermfg=232 ctermbg=231 cterm=NONE
  hi Todo ctermfg=228 ctermbg=231 cterm=bold
  hi Underlined ctermfg=232 ctermbg=231 cterm=underline
  hi ToolbarLine ctermfg=NONE ctermbg=231 cterm=NONE
  hi ToolbarButton ctermfg=232 ctermbg=231 cterm=bold
  hi gitcommitHeader ctermfg=243 ctermbg=231 cterm=bold
  hi gitcommitDiscardedType ctermfg=243 ctermbg=231 cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 16
  hi Normal ctermfg=black ctermbg=white cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=grey cterm=NONE
  hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Directory ctermfg=NONE ctermbg=NONE cterm=bold
  hi DiffAdd ctermfg=darkgreen ctermbg=green cterm=NONE
  hi DiffChange ctermfg=darkyellow ctermbg=yellow cterm=NONE
  hi DiffDelete ctermfg=darkred ctermbg=red cterm=NONE
  hi diffFile ctermfg=blue ctermbg=white cterm=NONE
  hi EndOfBuffer ctermfg=darkgrey ctermbg=white cterm=NONE
  hi ErrorMsg ctermfg=red ctermbg=white cterm=NONE
  hi FoldColumn ctermfg=black ctermbg=white cterm=NONE
  hi Folded ctermfg=black ctermbg=white cterm=NONE
  hi LineNr ctermfg=black ctermbg=white cterm=bold
  hi LineNrAbove ctermfg=grey ctermbg=white cterm=NONE
  hi MatchParen ctermfg=black ctermbg=white cterm=bold
  hi ModeMsg ctermfg=black ctermbg=white cterm=bold
  hi MoreMsg ctermfg=darkgrey ctermbg=white cterm=NONE
  hi NonText ctermfg=grey ctermbg=white cterm=NONE
  hi Pmenu ctermfg=black ctermbg=white cterm=NONE
  hi Question ctermfg=darkgrey ctermbg=white cterm=NONE
  hi Search ctermfg=black ctermbg=yellow cterm=bold
  hi SignColumn ctermfg=darkgrey ctermbg=white cterm=NONE
  hi SpecialKey ctermfg=darkgrey ctermbg=white cterm=NONE
  hi SpellBad ctermfg=darkgrey ctermbg=white cterm=underline
  hi SpellCap ctermfg=darkgrey ctermbg=white cterm=underline
  hi SpellLocal ctermfg=darkgrey ctermbg=white cterm=underline
  hi SpellRare ctermfg=darkgrey ctermbg=white cterm=underline
  hi StatusLine ctermfg=darkgrey ctermbg=grey cterm=NONE
  hi StatusLineNC ctermfg=darkgrey ctermbg=white cterm=NONE
  hi TabLine ctermfg=grey ctermbg=white cterm=NONE
  hi TabLineFill ctermfg=black ctermbg=white cterm=NONE
  hi TabLineSel ctermfg=black ctermbg=grey cterm=bold
  hi Title ctermfg=black ctermbg=white cterm=bold
  hi VertSplit ctermfg=black ctermbg=white cterm=NONE
  hi Visual ctermfg=black ctermbg=blue cterm=bold
  hi WarningMsg ctermfg=black ctermbg=white cterm=NONE
  hi WildMenu ctermfg=black ctermbg=darkgrey cterm=bold
  hi WinBar ctermfg=black ctermbg=white cterm=bold
  hi WinBarNC ctermfg=black ctermbg=white cterm=NONE
  hi Comment ctermfg=darkgrey ctermbg=white cterm=NONE
  hi Conditional ctermfg=black ctermbg=white cterm=bold
  hi Repeat ctermfg=black ctermbg=white cterm=bold
  hi Label ctermfg=black ctermbg=white cterm=bold
  hi Operator ctermfg=black ctermbg=white cterm=bold
  hi Keyword ctermfg=black ctermbg=white cterm=bold
  hi Exception ctermfg=black ctermbg=white cterm=bold
  hi Constant ctermfg=black ctermbg=white cterm=NONE
  hi Error ctermfg=red ctermbg=white cterm=bold
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=black ctermbg=white cterm=NONE
  hi Special ctermfg=black ctermbg=white cterm=NONE
  hi Todo ctermfg=yellow ctermbg=white cterm=bold
  hi Underlined ctermfg=black ctermbg=white cterm=underline
  hi ToolbarLine ctermfg=NONE ctermbg=white cterm=NONE
  hi ToolbarButton ctermfg=black ctermbg=white cterm=bold
  hi gitcommitHeader ctermfg=darkgrey ctermbg=white cterm=bold
  hi gitcommitDiscardedType ctermfg=darkgrey ctermbg=white cterm=NONE
  unlet s:t_Co
  finish
endif

" Color: black #000000 0 black
" Color: dark_red #800000 1 darkred
" Color: dark_green #194a1f 22 darkgreen
" Color: dark_yellow #808000 3 darkyellow
" Color: dark_blue #000075 17 darkblue
" Color: dark_magenta #8b008b 5 darkmagenta
" Color: dark_cyan #469990 6 darkcyan
" Color: grey #cfc6c8 251 grey
" Color: dark_grey #737373 243 darkgrey
" Color: red #d20f2c 160 red
" Color: green #3cb44d 118 green
" Color: yellow #ffe119 228 yellow
" Color: blue #4363d8 21 blue
" Color: magenta #f032e6 201 magenta
" Color: cyan #42d4f4 51 cyan
" Color: white #ffffff 231 white
" Color: near_black #090909 232 black
" Color: light_grey #f0f1f3 255 grey
" Color: light_red #fabed4 219 red
" Color: light_green #aaffc3 86 green
" Color: light_yellow #fffac8 229 yellow
" Color: light_blue #d5e5f6 51 blue
" Term colors: black dark_red dark_green dark_yellow
" Term colors: dark_blue dark_magenta dark_cyan grey
" Term colors: dark_grey red green yellow
" Term colors: blue magenta cyan white
" Background: light
" vim: et ts=8 sw=2 sts=2
