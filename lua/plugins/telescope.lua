require('telescope').setup{
    file_ignore_patterns = {"dist/.*", "node_modules/.*"},
    shorten_path = true,
    color_devicons = true
}

-- Mappings
vim.api.nvim_set_keymap( 'n',   '<leader>ff', '<cmd>Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<leader>fb', '<cmd>Telescope buffers<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<leader>fc', '<cmd>Telescope git_commits<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap( 'n',   '<leader>fh', '<cmd>Telescope help_tags<CR>', {noremap = true, silent = true})
-- nnoremap <leader>fg <cmd>Telescope live_grep<cr>
