" ------------------------
" -      SOURCING        -   
" ------------------------

source $HOME/.config/nvim/config/general.vim
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim
luafile $HOME/.config/nvim/lua/init.lua

 
" ------------------------
" -       THEME          -   
" ------------------------

colorscheme onedark

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

" ------------------------
" -        LSP           -   
" ------------------------
"
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.resolve_timeout = 800
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true

