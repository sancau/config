" github.com/sancau .vimrc

"""""""""""""""""""""""""""""""""""""""
" Plugins 
"
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/joshdick/onedark.vim.git'

call plug#end()

filetype indent off
syntax off

"""""""""""""""""""""""""""""""""""""""
" General
" 
set encoding=utf-8
set noswapfile
set clipboard=unnamed
set tabstop=4
set softtabstop=4
set expandtab
set relativenumber
set showcmd
set cursorline
set incsearch
set hlsearch
set so=7
set wildmenu
set wildignore=*.pyc,*/.git/*,*/.DS_Store
set ruler
set splitbelow
set splitright
set colorcolumn=81

let mapleader="m"

"""""""""""""""""""""""""""""""""""""""
" Mappings 
"
nnoremap <leader><space> :nohlsearch<cr>
nnoremap j gj
nnoremap k gk
nnoremap <space> /

nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>

command Q q
command Wq wq

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>f :Files .<CR>
nnoremap <leader>s :Ag<CR>
nnoremap <leader>c :Commits<CR>

map <C-n> :NERDTreeToggle<CR>
map <leader>z :Goyo <bar> highlight StatusLineNC ctermfg=white<CR>

""""""""""""""""""""""""""""""""""""""
" Syntax Colors
"
set t_Co=256
syntax on
colorscheme onedark

" No colors setup (except comments and errors)
" 
"highlight Comment    cterm=bold ctermfg=none
"highlight Error      ctermfg=yellow
"highlight Constant   ctermfg=none
"highlight Identifier ctermfg=none
"highlight Statement  ctermfg=none
"highlight PreProc    ctermfg=none
"highlight Type       ctermfg=none
"highlight Special    ctermfg=none
"highlight Underlined ctermfg=none

""""""""""""""""""""""""""""""""""""""
" Code Style
" 
filetype plugin indent on


