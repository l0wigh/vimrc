" General Settings for vim
syntax on
set background=dark
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
set t_Co=256
set scrolloff=8
set relativenumber
set shiftwidth=4
set softtabstop=4

" Plugin and plugin related settings
call plug#begin("~/.vim/plugged")
Plug 'mattn/emmet-vim'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'evanleck/vim-svelte'
Plug 'airblade/vim-gitgutter'
Plug 'nightsense/snow'
Plug 'cocopon/iceberg.vim'
Plug 'yuezk/vim-js'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
colorscheme iceberg
" Config for airline
let g:airline#extensions#whitespace#enabled = 0
autocmd VimEnter * AirlineTheme murmur

" Config for vim-gutter
set updatetime=250

" Config for coc.nvim
inoremap <silent><expr> <TAB>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ?
  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'


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
