" execute pathogen#infect()

syntax enable
filetype plugin indent on

set noswapfile
set hidden ruler
set number relativenumber
set tabstop=2 shiftwidth=2 expandtab autoindent
set foldmethod=syntax nofoldenable foldlevel=2 foldnestmax=10
set backspace=2
set scrolloff=3

inoremap jk <Esc>

nnoremap <A-j> gj
nnoremap <A-k> gk
nnoremap <C-N> :bnext<cr>
nnoremap <C-P> :bprev<cr>
let mapleader = "<space>"

map <F4> :bd<cr>

map <leader>y magg"+yG`a

map <F5> :source %<cr>

autocmd FileType netrw setl bufhidden=wipe
