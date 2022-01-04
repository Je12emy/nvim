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
vim.api.nvim_set_keymap( 'n',   '<Space>wr', '<C-w>=<CR>', options)

-- Nvim Tree
vim.api.nvim_set_keymap( 'n',   '<c-t>', ':NvimTreeToggle<CR>', options)

-- LSP 
vim.api.nvim_set_keymap( 'n',   'gd', ':lua vim.lsp.buf.definition()<CR>', options)
vim.api.nvim_set_keymap( 'n',   'gi', ':lua vim.lsp.buf.implementation()<CR>', options)
vim.api.nvim_set_keymap( 'n',   'K', ':lua vim.lsp.buf.hover()<CR>', options)
vim.api.nvim_set_keymap( 'n',   'gs', ':lua vim.lsp.buf.signature_help()<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>ca', ':lua vim.lsp.buf.code_action()<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>cr', ':lua vim.lsp.buf.rename()<CR>', options)
vim.api.nvim_set_keymap( 'n',   'cd', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<C-]>d', ':lua vim.lsp.diagnostic.goto_next()<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<C-[>d', ':lua vim.lsp.diagnostic.goto_prev()<CR>', options)
vim.api.nvim_set_keymap( 'n',   '<Space>cf', ':lua vim.lsp.buf.formatting()<CR>', options)

-- Formating
vim.api.nvim_set_keymap( 'n',   '<Space>cp', ':Neoformat<CR>', options)


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

-- Writting
vim.api.nvim_set_keymap( 'n',   '<F8>', ':setlocal spell!<CR>', {silent = false})

