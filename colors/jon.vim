" Maintainer: Jon Kuperman
" Last Change:	Februrary 12 2013

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "kelly"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine   guibg=#2d2d2d
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen   guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu 	   	guifg=#f6f3e8 guibg=#444444
  hi PmenuSel   	guifg=#000000 guibg=#cae682
endif

" General colors
hi Cursor  		 guifg=NONE    guibg=#656565 gui=none
hi Normal 		 guifg=#e8f8f8 guibg=#1a1b1b gui=none
hi NonText 		 guifg=#808080 guibg=#303030 gui=none
hi LineNr 		 guifg=#857b6f guibg=#000000 gui=none
hi StatusLine 	 guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444 gui=none
hi VertSplit 	 guifg=#444444 guibg=#444444 gui=none
hi Folded 		 guibg=#384048 guifg=#a0a8b0 gui=none
hi Title 		 guifg=#f6f3e8 guibg=NONE	gui=bold
hi Visual		 guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey	 guifg=#808080 guibg=#343434 gui=none

" Syntax highlighting
hi Number		guifg=#097FE8 gui=none
hi Comment 		guifg=#dc7561 gui=italic
hi Todo 		   guifg=#8f8f8f gui=italic
hi Constant 	guifg=#4189c9 gui=none
hi String 		guifg=#77a843 gui=italic
hi Identifier 	guifg=#cae682 gui=none
hi Function 	guifg=#9aba50 gui=none
hi Type 	   	guifg=#cae682 gui=none
hi Statement 	guifg=#8ac6f2 gui=none
hi Keyword		guifg=#8ac6f2 gui=none
hi PreProc 		guifg=#e5786d gui=none
hi Special		guifg=#e7f6da gui=none
hi htmlTag     guifg=#53b0c9 gui=NONE 
hi htmlValue   guifg=#e8f8f8 gui=NONE 
hi htmlString  guifg=#dac983 gui=NONE 

" Highlighting for Terminal
hi Number		ctermfg=111  gui=none
hi Comment 		ctermfg=239 gui=italic
hi Todo 		ctermfg=242 gui=italic
hi Constant 	ctermfg=21  gui=none
hi String 		ctermfg=28  gui=italic
hi Identifier 	ctermfg=84  gui=none
hi Function 	ctermfg=172  gui=none
hi Type 	   	ctermfg=15  gui=none
hi Statement 	ctermfg=135  gui=none
hi Keyword		ctermfg=135  gui=none
hi PreProc 		ctermfg=167 gui=none
hi Special		ctermfg=15  gui=none
hi htmlTag     ctermfg=39  gui=NONE 
hi htmlValue   ctermfg=87  gui=NONE 
hi htmlString  ctermfg=136 gui=NONE 
hi LineNr 		ctermfg=51  guibg=16
