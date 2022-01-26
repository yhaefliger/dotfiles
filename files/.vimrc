" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()

" Colors
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
colorscheme onedark

" Defaults
set nocompatible
set nu
set t_Co=256
syntax on
filetype indent plugin on

" Change the LEADER to ,!
let mapleader=","

" highight current line with F4
nnoremap <silent> <F4> :set cursorline!<CR>

" Moving lines with control j/k
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" NERDTree
noremap <Leader>e :NERDTreeToggle<CR>
noremap <Leader>f :NERDTreeFind<CR>
