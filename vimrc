filetype plugin on
filetype indent on

filetype on       " enable file type detection
syntax on         " syntax highlighting

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
set t_Co=8
set listchars=tab:>-,nbsp:␣
set list
set display=truncate
set showcmd

autocmd InsertEnter * set listchars-=trail:▒
autocmd InsertLeave * set listchars+=trail:▒

" autocmd BufWritePre * :%s/\s\+$//e "remove white space on save

" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'

colorscheme darkblue
hi ColorColumn ctermbg=yellow

nnoremap <silent> <F9> :NERDTee<CR>

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

set relativenumber

autocmd FileType markdown set expandtab
autocmd FileType markdown set shiftwidth=2
autocmd FileType markdown set tabstop=2
" autocmd FileType markdown setlocal tw=60
" autocmd FileType markdown setlocal fo=cqt

" autocmd FileType text setlocal tw=60
" autocmd FileType text setlocal fo=cqt

" rust racer autocompletion
let g:racer_cmd = "/home/thiolliere/.cargo/bin/racer"
let $RUST_SRC_PATH="/home/thiolliere/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/"

highlight Folded ctermbg=0 ctermfg=12

" jedi
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "2"
