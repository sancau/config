" github.com/sancau .vimrc
"""""""""""""""""""""""""""""""""""""""
" Plugins 
"
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'

Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/Vimjas/vim-python-pep8-indent'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/lifepillar/vim-solarized8.git'
Plug 'https://github.com/Valloric/YouCompleteMe'

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
let g:ycm_python_binary_path = 'python'

"""""""""""""""""""""""""""""""""""""""
" Mappings 
"
nnoremap <leader>/ :nohlsearch<cr>
nnoremap j gj
nnoremap k gk

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

nnoremap <leader>gs :! git status<CR>
nnoremap <leader>gd :! git diff<CR>
nnoremap <leader>bj :! eval $(docker-machine env dev) && python run.py compose --js<CR>

nnoremap <leader>db oimport pudb; pu.db<ESC>^
nnoremap <space> :YcmCompleter GoTo<CR> 

map <C-n> :NERDTreeToggle<CR>
map <leader>z :Goyo <bar> highlight StatusLineNC ctermfg=white<CR>

nnoremap  <leader>B :<c-u>exe "colors" (g:colors_name =~# "dark"
    \ ? substitute(g:colors_name, 'dark', 'light', '')
    \ : substitute(g:colors_name, 'light', 'dark', '')
    \ )<cr>

""""""""""""""""""""""""""""""""""""""
" Syntax Colors
"
set t_Co=256
syntax on
colorscheme solarized8_light

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
filetype plugin on
filetype plugin indent on

