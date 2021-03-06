syntax enable
filetype plugin indent on

source ~/vimfiles/snippets.vim

set background=dark
if has("gui_running")
  colorscheme solarized
endif

set noswapfile
set hidden ruler
set number relativenumber
set tabstop=2 shiftwidth=2 expandtab autoindent
set foldmethod=syntax nofoldenable foldlevel=2 foldnestmax=10
set backspace=2
set scrolloff=3
set linebreak

map <space> <leader>
inoremap jk <Esc>
inoremap <C-BS> <C-W>

nnoremap Y y$

" Move by screen lines. Puts long jumps in the jump list.
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'
nnoremap <C-N> :bnext<cr>
nnoremap <C-P> :bprev<cr>

nnoremap <F4> :bd<cr>

nnoremap <leader>y :%y+<cr>
nnoremap <leader>d "_d
nnoremap <leader>c "_c

nnoremap <F5> :source %<cr>

autocmd FileType netrw setl bufhidden=wipe

" Trim trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

let g:ackprg='rg --vimgrep --smart-case'

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=$PWD/**

" Display all matching files when we complete
set wildmenu

" Use eslint to "make"
set makeprg=npx\ eslint\ -f\ unix
