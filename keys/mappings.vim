
" ------------------------
" -      Keymaps         -   
" ------------------------

" Replace command
nnoremap S :%s//g<Left><Left>

" Navigation Keymaps
nnoremap <c-h> :wincmd h<CR>
nnoremap <c-j> :wincmd j<CR>
nnoremap <c-k> :wincmd k<CR>
nnoremap <c-l> :wincmd l<CR>
nnoremap <leader>wt :wincmd T<CR>

" Window Split
nnoremap <c-v> <C-w>v
nnoremap <c-s> <C-w>s
nnoremap <silent> <Leader>w+ :exe "vertical resize +" . 5<CR> 
nnoremap <silent> <Leader>w- :exe "vertical resize -" . 5<CR>

" Nerd Tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Comment Code
nmap <leader>cc<space> <Plug>NERDCommenterToggle
nmap <leader>ccm <Plug>NERDCommenterMinimal
nmap <leader>ccs <Plug>NERDCommenterSexy

nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent>cr <cmd>lua require('lspsaga.rename').rename()<CR>
nnoremap <silent>cr :Lspsaga rename<CR>
nnoremap <silent> gd :Lspsaga preview_definition<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Moving Lines of code like VSCode
nnoremap <A-j> :m+<CR>
nnoremap <A-k> :m-2<CR>
vnoremap <A-j> :m+<CR>
vnoremap <A-k> :m-2<CR>
inoremap <A-j> <Esc>:m-2<CR>
inoremap <A-k> <Esc>:m+<CR>

" Tab Manipulation Keymaps
nnoremap <leader>ts :tab split<CR>
nnoremap <a-.> :BufferNext<CR>
nnoremap <a-,> :BufferPrevious<CR>
nnoremap <silent>    <A-c> :BufferClose<CR>
nnoremap <silent> <A-1> :BufferGoto 1<CR>
nnoremap <silent> <A-2> :BufferGoto 2<CR>
nnoremap <silent> <A-3> :BufferGoto 3<CR>
nnoremap <silent> <A-4> :BufferGoto 4<CR>
nnoremap <silent> <A-5> :BufferGoto 5<CR>
nnoremap <silent> <A-6> :BufferGoto 6<CR>
nnoremap <silent> <A-7> :BufferGoto 7<CR>
nnoremap <silent> <A-8> :BufferGoto 8<CR>
nnoremap <silent> <A-9> :BufferLast<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fc <cmd>Telescope git_commits<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Autocompletition
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" LSP
"nnoremap <silent> K <cmd>lua vim.lsp.buf.sigature_help()<CR>
nnoremap <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>

" Floaterm
nnoremap <silent> <F12> :FloatermToggle<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <F21> <C-\><C-n>:FloatermKill<CR>
tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <F11> <C-\><C-n>:FloatermNext<CR>
tnoremap <silent> <F10> <C-\><C-n>:FloatermPrev<CR>
