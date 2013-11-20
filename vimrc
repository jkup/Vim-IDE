set nocompatible
filetype off

" call pathogen and set it to add help tags
call pathogen#infect()
call pathogen#helptags()
call pathogen#incubate()

syntax on
colorscheme tomorrow-night

set number                            " display line numbers
set tabstop=4                         " a tab is four spaces
set shiftwidth=4                      " four spaces for auto-indenting
set autoindent						  " always set autoindenting on
set smartindent
set ignorecase                        " ignore cases for smart search to work
set smartcase						  " smart searching for sensitivity
set incsearch
set hlsearch
set t_Co=256

"Show Functions
map<F7> <Plug>ShowFunc 
map!<F7> <Plug>ShowFunc

filetype plugin indent on
set list

" Toggle Highlight Search
nnoremap <F3> :set hlsearch!<CR>
nnoremap <F5> :%s/\s\+$//<CR>
nnoremap <leader>b :set hlsearch! hlsearch?<CR>

" Set leader key to ,
let mapleader = ","

" Airline config
let g:airline_enable_fugitive=1
let g:airline_theme='bubblegum'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'

" Window management hotkeys
function! WinMove(key)
	let t:curwin = winnr()

	exec "wincmd ".a:key

	" Couldn't move, create a window
	if (t:curwin == winnr())

		" Create vertical split
		if (match(a:key,'[jk]'))
			wincmd v

		" Create horizontal split
		else
			wincmd s

		endif

		" Move to the newly created window
		exec "wincmd ".a:key

	endif
endfunction

" Window navigate/create
map <leader>h :call WinMove('h')<cr>
map <leader>k :call WinMove('k')<cr>
map <leader>l :call WinMove('l')<cr>
map <leader>j :call WinMove('j')<cr>

" Window moving
map <leader>H :wincmd H<cr>
map <leader>K :wincmd K<cr>
map <leader>L :wincmd L<cr>
map <leader>J :wincmd J<cr>

"Window Resizing
nmap <right> :3wincmd < <cr>
nmap <left> :3wincmd > <cr>
nmap <up> :3wincmd + <cr>
nmap <down> :3wincmd - <cr>

command! HighlightWhitespace call HighlightWhitespace()
func! HighlightWhitespace()
    execute 'match ExtraWhitespace /\s\+$\| \+\ze\t\| [^\t]\zs\t\+/'
endfunc

map <leader>wn :HighlightWhitespace<cr>
map <leader>wf :match<cr>

" Copy and Paste mode
map <leader>no :set number!<cr>:set list!<cr>
