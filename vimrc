set nocompatible                           " Disable vi-compatibility
set encoding=utf-8
filetype plugin indent on

" call pathogen and set it to add help tags
execute pathogen#infect()
colorscheme molokai

" Gui Options
set guioptions-=T                           " Removes top toolbar
set guioptions-=r                           " Removes right hand scroll bar
set go-=L                                   " Removes left hand scroll bar

syntax on
set list

set number                                  " always show line numbers
set autoindent                              " always set autoindenting on
set smartindent
set ignorecase                              " ignore case when searching
set smartcase                               " ignore case if search pattern is all lowercase
set incsearch
set hlsearch
set t_Co=256
set clipboard=unnamed
set linespace=15
set visualbell                              " don't beep
set noerrorbells                            " don't beep
set mouse=a

" Set leader key to ,
let mapleader = ","
let g:mapleader = ","

" Down is really the next line
nnoremap j gj
nnoremap k gk

" Swap files out of project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Run PHPUnit tests
map <Leader>t :!phpunit %<cr>

" Remove search results
command! H let @/=""

"Show Functions
map<F7> <Plug>ShowFunc 
map!<F7> <Plug>ShowFunc

" Abbreviations
abbrev gm !php artisan generate:model
abbrev gc !php artisan generate:controller
abbrev gmig !php artisan generate:migration

" Laravel framework commons
nmap <leader>lr :e app/routes.php<cr>
nmap <leader>lca :e app/config/app.php<cr>
nmap <leader>lcd :e app/config/database.php<cr>
nmap <leader>lc :e composer.jso::cr>

" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**

" Create/edit file in the current directory
nmap :ed :edit %:p:h/

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
" map <leader>l :call WinMove('l')<cr>
map <leader>j :call WinMove('j')<cr>

" Window moving
map <leader>H :wincmd H<cr>
map <leader>K :wincmd K<cr>
" map <leader>L :wincmd L<cr>
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

" Powerline
set rtp+=/Users/admin/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

"NerdTREE
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <C-n> :NERDTreeToggle<CR>
