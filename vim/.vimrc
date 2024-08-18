call plug#begin()

Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-commentary'

call plug#end()

colorscheme habamax

set nu
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent

set timeoutlen=100

let mapleader = " "

nnoremap <leader>q :Ex<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>y '\+y
nnoremap <leader>y "+y

nnoremap <leader>uu :!go fmt<CR>
