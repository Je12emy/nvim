local options = require'map_options'

require('telescope').setup{
    file_ignore_patterns = {"dist/*", "node_modules/*"},
    shorten_path = true,
    color_devicons = true
}

-- Telescope mappings
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
vim.api.nvim_set_keymap( 'n',   '<Space>fk', ':Telescope keymaps<CR>', options)
