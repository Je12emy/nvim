local options = { noremap = true, silent = false }

vim.api.nvim_set_keymap( 'n',   '<Space>wg', ':Goyo<CR>', options)

vim.cmd [[
  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight! 
]]
