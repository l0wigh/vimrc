set background=dark
set tabstop=4
set nowrap
syntax on
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
set t_Co=256
set scrolloff=8
set relativenumber
set shiftwidth=4
set softtabstop=4

call plug#begin("~/.vim/plugged")
Plug 'mattn/emmet-vim'
Plug 'ajh17/vimcompletesme'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'evanleck/vim-svelte'
Plug 'nightsense/snow'
Plug 'cocopon/iceberg.vim'
Plug 'yuezk/vim-js'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
colorscheme iceberg
let g:airline#extensions#whitespace#enabled = 0
autocmd VimEnter * AirlineTheme murmur
highlight CursorLine cterm=bold 

inoremap jk <Esc>
nnoremap <Tab><Tab> :%retab!<CR>
vnoremap <C-c> <Esc>

nnoremap j h
nnoremap k j
nnoremap l k
nnoremap m l
nnoremap h m
nnoremap ù 0

nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>j
nnoremap <C-w>l <C-w>k
nnoremap <C-w>m <C-w>l
nnoremap <C-w>h <C-w>m

vnoremap j h
vnoremap k j
vnoremap l k
vnoremap m l
vnoremap h m
vnoremap ù 0
