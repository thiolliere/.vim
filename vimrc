filetype plugin on
filetype indent on

filetype on       " enable file type detection
syntax on         " syntax highlighting

colorscheme darkblue "evening

set number        " line number
set smartindent   " smart code indentation
set smarttab      " smart tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set incsearch
set nocompatible
set hidden
set history=100
set mouse=a

autocmd BufWritePre * :%s/\s\+$//e "remove white space on save

" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'

nnoremap <silent> <F9> :NERDTree<CR>
map <leader>s :source ~/.vimrc<CR>

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

set relativenumber

" autocmd FileType markdown setlocal tw=60
" autocmd FileType markdown setlocal fo=cqt

" autocmd FileType text setlocal tw=60
" autocmd FileType text setlocal fo=cqt

