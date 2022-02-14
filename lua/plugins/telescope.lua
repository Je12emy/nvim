local options = require'map_options'

require('telescope').setup{
    file_ignore_patterns = {"dist/*", "node_modules/*"},
    shorten_path = true,
    color_devicons = true
}

-- Telescope mappings
vim.keymap.set( 'n',   '<Space>ff', ':Telescope find_files<CR>')
vim.keymap.set( 'n',   '<Space>fb', ':Telescope buffers<CR>')
vim.keymap.set( 'n',   '<Space>fc', ':Telescope git_commits<CR>')
vim.keymap.set( 'n',   '<Space>fr', ':Telescope git_branches<CR>')
vim.keymap.set( 'n',   '<Space>fh', ':Telescope help_tags<CR>')
vim.keymap.set( 'n',   '<Space>fm', ':Telescope marks<CR>')
vim.keymap.set( 'n',   '<Space>fs', ':Telescope spell_suggest<CR>')
vim.keymap.set( 'n',   '<Space>fg', ':Telescope live_grep<CR>')
vim.keymap.set( 'n',   '<Space>fk', ':Telescope keymaps<CR>')
