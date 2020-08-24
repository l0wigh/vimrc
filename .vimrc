" General Settings for vim
" set background=dark
syntax on
set tabstop=4
set nowrap
set number
set fileencoding=utf-8
set listchars=tab:\|\ 
set list
set noerrorbells
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set noexpandtab
set scrolloff=8
set relativenumber
set shiftwidth=4
set softtabstop=4
set termguicolors
let mapleader = ","

" Plugin and plugin related settings
call plug#begin("~/.vim/plugged")

" Vim Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'nightsense/snow'
Plug 'cocopon/iceberg.vim'
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'name': 'dracula' }

" Vim Plugins for Dev
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'evanleck/vim-svelte'
Plug 'airblade/vim-gitgutter'
Plug 'yuezk/vim-js'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'StanAngeloff/php.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()
colorscheme dracula
" hi Normal guibg=NONE ctermbg=NONE

filetype plugin indent on
let g:one_allow_italics = 1

" Config for coc.nvim
inoremap <silent><expr> <TAB>
	  \ pumvisible() ? coc#_select_confirm() :
	  \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	  \ <SID>check_back_space() ? "\<TAB>" :
	  \ coc#refresh()

function! s:check_back_space() abort
	  let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	let g:coc_snippet_next = '<tab>'

" Config for airline
let g:airline#extensions#whitespace#enabled = 0
autocmd VimEnter * AirlineTheme dracula

" Config for vim-gutter
set updatetime=250

" Escape remap + retab files with tabs and not space
inoremap jk <Esc>
nnoremap <Tab><Tab> :%retab!<CR>
vnoremap <C-c> <Esc>

" Normal mode mouvements remap + ù to go on the beginning of the line
nnoremap j h
nnoremap k j
nnoremap l k
nnoremap m l
nnoremap h m
nnoremap ù 0
nnoremap <CR> o<Esc>

" Normal mode remap of Ctrl-W mouvements
nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>j
nnoremap <C-w>l <C-w>k
nnoremap <C-w>m <C-w>l
nnoremap <C-w>h <C-w>m

" Personal tab shortcuts in normal mode
nnoremap <Left> gT
nnoremap <Right> gt
nnoremap <Up> :tabm +1<CR>
nnoremap <Down> :tabm -1<CR>
nnoremap <S-tab> :tabnew<CR>:open<Space>.<CR>

" Visual mode mouvements remap same as Normal mode remap
vnoremap j h
vnoremap k j
vnoremap l k
vnoremap m l
vnoremap h m
vnoremap ù 0
