-- ------------------------
-- -      Keymaps         -   
-- ------------------------

local options = { noremap = true, silent = true }

-- General
vim.api.nvim_set_keymap( 'i',   'jk', '<Esc>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>', '<Nop>', options)
vim.api.nvim_set_keymap( 'n',   'S', ':%s//g<Left><Left>', {noremap = true})

---- Navigation Keymaps
vim.api.nvim_set_keymap( 'n',   '<c-h>', ':wincmd h<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<c-j>', ':wincmd j<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<c-k>', ':wincmd k<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<c-l>', ':wincmd l<CR>', options)

-- Window Split Manipulation
vim.api.nvim_set_keymap( 'n',   '<Space>wv', '<C-w>v<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>ws', '<C-w>s<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>wh', ':exe "vertical resize -" .5<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>wl', ':exe "vertical resize +" .5<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>wj', ':exe "resize -" .5<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>wk', ':exe "resize +" .5<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>wr', '<C-w>=', options)

-- Nvim Tree
vim.api.nvim_set_keymap( 'n',   '<c-t>', ':NvimTreeToggle<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Leader>n', ':NvimTreeFocus<CR>', options)

-- LSP 
vim.api.nvim_set_keymap( 'n',   'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', options)
vim.api.nvim_set_keymap( 'n',   'gr', '<cmd>lua vim.lsp.buf.references()<CR>', options)
vim.api.nvim_set_keymap( 'n',   'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', options)
vim.api.nvim_set_keymap( 'n',   'K', '<cmd>lua vim.lsp.buf.hover()<CR>', options)
vim.api.nvim_set_keymap( 'n',   'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', options)
vim.api.nvim_set_keymap( 'n',   'ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', options)

-- Code
vim.api.nvim_set_keymap( 'n',   '<Space>ci', ':TSLspImportAll<CR>', options)
vim.api.nvim_set_keymap( 'n',   "<Space>co", ":TSLspOrganize<CR>", options)
vim.api.nvim_set_keymap( 'n',   "<Space>cr", ":TSLspRenameFile<CR>", options)

-- Formating
vim.api.nvim_set_keymap( 'n',   '<Space>p', ':Neoformat<CR>', options)

-- Telescope
vim.api.nvim_set_keymap( 'n',   '<Space>ff', ':Telescope find_files<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>fb', ':Telescope buffers<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>fc', ':Telescope git_commits<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>fr', ':Telescope git_branches<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>fh', ':Telescope help_tags<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>fy', ':Telescope neoclip<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>fo', ':Telescope oldfiles<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>fm', ':Telescope marks<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>fs', ':Telescope spell_suggest<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>fg', ':Telescope live_grep<CR>', options)


-- Tab Manipulation Keymaps
vim.api.nvim_set_keymap( 'n',   '<a-.>', ':BufferNext<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-,>', ':BufferPrevious<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-c>', ':BufferClose<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-1>', ':BufferGoto 1<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-2>', ':BufferGoto 2<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-3>', ':BufferGoto 3<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-4>', ':BufferGoto 4<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-5>', ':BufferGoto 5<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-6>', ':BufferGoto 6<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-7>', ':BufferGoto 7<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-8>', ':BufferGoto 8<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<a-9>', ':BufferLast<CR>', options)

-- Autocompletition
--vim.api.nvim_set_keymap( 'i',   '<C-space>', 'compe#complete()', {noremap = true, silent = true, expr = true})
--vim.api.nvim_set_keymap( 'i',   '<CR>', 'compe#confirm()', {noremap = true, silent = true, expr = true})

-- Floaterm
vim.api.nvim_set_keymap( 'n',   '<F12>', ':FloatermToggle<CR>', options)
vim.api.nvim_set_keymap( 't',   '<F12>', '<C-\\><C-n>:FloatermToggle<CR>', options)
vim.api.nvim_set_keymap( 't',   '<F9>', '<C-\\><C-n>:FloatermNew<CR>', options)
vim.api.nvim_set_keymap( 't',   '<F21>', '<C-\\><C-n>:FloatermKill<CR>', options)
vim.api.nvim_set_keymap( 't',   '<F11>', '<C-\\><C-n>:FloatermNext<CR>', options)
vim.api.nvim_set_keymap( 't',   '<F10>', '<C-\\><C-n>:FloatermPrev<CR>', options)
vim.api.nvim_set_keymap( 't',   'jk', '<C-\\><C-n><CR>', options)

-- Latex
vim.api.nvim_set_keymap( 'n',   '<F8>', ':setlocal spell!<CR>', options)

