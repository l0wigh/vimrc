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

inoremap jk <Esc>
nnoremap <Tab><Tab> :%retab!<CR>
vnoremap <C-c> <Esc>

nnoremap j h
nnoremap k j
nnoremap l k
nnoremap m l
nnoremap h m
nnoremap ù 0
nnoremap <CR> o<Esc>

vnoremap j h
vnoremap k j
vnoremap l k
vnoremap m l
vnoremap h m
vnoremap ù 0

nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>j
nnoremap <C-w>l <C-w>k
nnoremap <C-w>m <C-w>l
nnoremap <C-w>h <C-w>m

nnoremap <Left> gT
nnoremap <Right> gt
nnoremap <Up> :tabm +1<CR>
nnoremap <Down> :tabm -1<CR>
nnoremap <S-tab> :tabnew<CR>:open<Space>.<CR>

map ^ :call NERDComment(0, "toggle")<CR>

call plug#begin("~/.vim/plugged")

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'cocopon/iceberg.vim'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'evanleck/vim-svelte'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

call plug#end()

colorscheme iceberg

let g:one_allow_italics = 1
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

autocmd VimEnter * AirlineTheme dracula
