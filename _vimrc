syntax enable
filetype plugin indent on

set background=dark
set term=screen-256color
let g:solarized_termcolors=256
colorscheme solarized

set noswapfile
set hidden ruler
set number relativenumber
set tabstop=2 shiftwidth=2 expandtab autoindent
set foldmethod=syntax nofoldenable foldlevel=2 foldnestmax=10
set backspace=2
set scrolloff=3
set linebreak

let mapleader = "<space>"

inoremap jk <Esc>
inoremap <C-BS> <C-W>

nnoremap Y y$
nnoremap <A-j> gj
nnoremap <A-k> gk
nnoremap <C-N> :bnext<cr>
nnoremap <C-P> :bprev<cr>

nnoremap <F4> :bd<cr>

nnoremap <leader>y :%y+<cr>

nnoremap <F5> :source %<cr>

autocmd FileType netrw setl bufhidden=wipe

" Trim trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

let g:ackprg='rg --vimgrep'
