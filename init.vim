" ------------------------
" -      SOURCING        -   
" ------------------------

source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/keys/which-key.vim
luafile $HOME/.config/nvim/lua/init.lua

" ------------------------
" -      CONFIG          -   
" ------------------------

" Startify
let g:webdevicons_enable = 1
let g:webdevicons_enable_startify = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" NERDTree
let g:NERDTreeIgnore = ['^node_modules$']

"" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" NERDCommenter
let g:NERDCreateDefaultMappings = 0

" Airline
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" VimWiki
let g:vimwiki_list = [{'path': '~/Nextcloud/Notes/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]
"let g:mkdp_auto_start = 1

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

