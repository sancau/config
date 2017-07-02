" github.com/sancau .vimrc

"""""""""""""""""""""""""""""""""""""""
" Plugins 
"
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end() 

filetype indent off
syntax off

"""""""""""""""""""""""""""""""""""""""
" General
" 
set encoding=utf-8
set clipboard=unnamed
set tabstop=4
set softtabstop=4
set expandtab
set relativenumber
set showcmd
set cursorline
set incsearch
set hlsearch
set foldenable
set foldmethod=indent
set so=7
set wildmenu
set wildignore=*.pyc,*/.git/*,*/.DS_Store
set ruler
set splitbelow
set splitright

let mapleader="m"

"""""""""""""""""""""""""""""""""""""""
" Mappings 
"
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>f za
nnoremap j gj
nnoremap k gk
nnoremap <leader>u :GundoToggle<CR>

command Q q

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>s :FZF<CR>
nnoremap <leader>sh :FZF ~<CR>
nnoremap <leader>sg :FZF /<CR>
