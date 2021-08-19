-- ------------------------
-- -      Keymaps         -   
-- ------------------------

-- Replace command
vim.api.nvim_set_keymap( 'n',   'S', ':%s//g<Left><Left>', {noremap = true})

-- Navigation Keymaps
vim.api.nvim_set_keymap( 'n',   '<c-h>', ':wincmd h<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<c-j>', ':wincmd j<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<c-k>', ':wincmd k<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<c-l>', ':wincmd l<CR>', {noremap = true, silent = true})

-- Window Split Manipulation
vim.api.nvim_set_keymap( 'n',   '<c-v>', '<C-w>v<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<c-s>', '<C-w>s<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<s-h>', ':exe --vertical resize --- .5<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<s-l>', ':exe --vertical resize +-- .5<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap( 'n',   '<s-j>', ':exe --resize --- .5<CR>', {noremap = true})
-- vim.api.nvim_set_keymap( 'n',   '<s-k>', ':exe --resize +-- .5<CR>', {noremap = true})

-- Telescope
vim.api.nvim_set_keymap( 'n',   '<leader>ff', '<cmd>Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<leader>fb', '<cmd>Telescope buffers<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<leader>fc', '<cmd>Telescope git_commits<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<leader>fr', '<cmd>Telescope git_branches<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<leader>fh', '<cmd>Telescope help_tags<CR>', {noremap = true, silent = true})

-- Nerd Tree
vim.api.nvim_set_keymap( 'n',   '<c-t>', ':NERDTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<leader>n', ':NERDTreeFocus<CR>', {noremap = true, silent = true})

-- LSP
vim.api.nvim_set_keymap( 'n',   'gd', '<cmd> vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   'gr', '<cmd> vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   'gi', '<cmd> vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   'K', '<cmd> vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   'gs', '<cmd> vim.lsp.buf.signature_help()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<C-n>', '<cmd> vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<C-p>', '<cmd> vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   'ca', '<cmd> vim.lsp.buf.code_action()<CR>', {noremap = true, silent = true})

-- Tab Manipulation Keymaps
vim.api.nvim_set_keymap( 'n',   '<a-.>', ':BufferNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-,>', ':BufferPrevious<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-c>', ':BufferClose<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-1>', ':BufferGoto 1<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-2>', ':BufferGoto 2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-3>', ':BufferGoto 3<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-4>', ':BufferGoto 4<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-5>', ':BufferGoto 5<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-6>', ':BufferGoto 6<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-7>', ':BufferGoto 7<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-8>', ':BufferGoto 8<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<a-9>', ':BufferLast<CR>', {noremap = true, silent = true})

-- Autocompletition
vim.api.nvim_set_keymap( 'i',   '<C-space>', 'compe#complete()', {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap( 'i',   '<CR>', 'compe#confirm()', {noremap = true, silent = true, expr = true})

-- Floaterm
vim.api.nvim_set_keymap( 'n',   '<F12>', ':FloatermToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 't',   '<F12>', '<C-\\><C-n>:FloatermToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 't',   '<F9>', '<C-\\><C-n>:FloatermNew<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 't',   '<F21>', '<C-\\><C-n>:FloatermKill<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 't',   '<F11>', '<C-\\><C-n>:FloatermNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 't',   '<F10>', '<C-\\><C-n>:FloatermPrev<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 't',   'jk', '<C-\\><C-n><CR>', {noremap = true, silent = true})

-- Latex
vim.api.nvim_set_keymap( 'n',   '<F8>', ':setlocal spell!<CR>', {noremap = true})
