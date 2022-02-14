-- ------------------------
-- -      Keymaps         -   
-- ------------------------

local options = { noremap = true, silent = true }

-- General
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set("n", '<Space>', '<Nop>')
vim.keymap.set('n', 'S', ':%s//g<Left><Left>')

---- Navigation Keymaps
vim.keymap.set('n', '<c-h>', '<cmd>wincmd h<CR>')
vim.keymap.set('n', '<c-j>', '<cmd>wincmd j<CR>')
vim.keymap.set('n', '<c-l>', '<cmd>wincmd l<CR>')
vim.keymap.set('n', '<c-k>', '<cmd>wincmd k<CR>')

-- Window Split Manipulation
vim.keymap.set( 'n',   '<Space>wv', '<C-w>v<CR>')
vim.keymap.set( 'n',   '<Space>ws', '<C-w>s<CR>')
vim.keymap.set( 'n',   '<Space>wh', ':exe "vertical resize -" .5<CR>')
vim.keymap.set( 'n',   '<Space>wl', ':exe "vertical resize +" .5<CR>')
vim.keymap.set( 'n',   '<Space>wj', ':exe "resize -" .5<CR>')
vim.keymap.set( 'n',   '<Space>wk', ':exe "resize +" .5<CR>')
vim.keymap.set( 'n',   '<Space>wr', '<C-w>=<CR>')

-- Formating
vim.keymap.set( 'n',   '<Space>cp', ':Neoformat<CR>')

-- Floaterm
vim.keymap.set( 'n',   '<F12>', ':FloatermToggle<CR>')
vim.keymap.set( 't',   '<F12>', '<C-\\><C-n>:FloatermToggle<CR>')
vim.keymap.set( 't',   '<F9>', '<C-\\><C-n>:FloatermNew<CR>')
vim.keymap.set( 't',   '<F21>', '<C-\\><C-n>:FloatermKill<CR>')
vim.keymap.set( 't',   '<F11>', '<C-\\><C-n>:FloatermNext<CR>')
vim.keymap.set( 't',   '<F10>', '<C-\\><C-n>:FloatermPrev<CR>')
vim.keymap.set( 't',   'jk', '<C-\\><C-n><CR>')

-- Writting
vim.keymap.set( 'n',   '<F8>', ':setlocal spell!<CR>')
