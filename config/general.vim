" ------------------------
" -      DEFAULTS        -   
" ------------------------

syntax on
set noerrorbells
set number relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set incsearch
set clipboard=unnamed
set clipboard=unnamedplus
set hlsearch
imap jj <Esc>
let mapleader=" "
nnoremap <SPACE> <Nop>
set timeoutlen=1000
set t_Co=256
set cursorline
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

