-- ------------------------
-- -      Modules         -   
-- ------------------------
-- General Options
require('keymaps')
require('settings')
require('plugins/packer-nvim')
require('lsp')
---- Plugins
require('plugins/lualine')
require('plugins/telescope')
require('plugins/nvimtree')
require('plugins/vimwiki')
require('plugins/lsp-kind')
require('plugins/nvim-cmp')
require('plugins/gitsigns')
-- require('plugins/catpuccin')
require('plugins/gruvbox')
require('plugins/comment')
-- require('plugins/barbar')
require('plugins/luasnip')
require('plugins/nvim-dap')
-- For some reasong this does not work when set from the settings module
vim.cmd[[set laststatus=3]]
