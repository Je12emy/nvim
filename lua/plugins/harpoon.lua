-- h is for harpoon
-- This could be better lol
vim.keymap.set('n', '<leader>ha', function() return require("harpoon.mark").add_file() end)
vim.keymap.set('n', '<leader>hm', function() return require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set('n', '<leader>hn', function() return require("harpoon.ui").nav_next() end)
vim.keymap.set('n', '<leader>hp', function() return require("harpoon.ui").nav_prev() end)
vim.keymap.set('n', '<leader>h1', function() return require("harpoon.ui").nav_file(1) end)
vim.keymap.set('n', '<leader>h2', function() return require("harpoon.ui").nav_file(2) end)
vim.keymap.set('n', '<leader>h3', function() return require("harpoon.ui").nav_file(3) end)
vim.keymap.set('n', '<leader>h4', function() return require("harpoon.ui").nav_file(4) end)
vim.keymap.set('n', '<leader>h4', function() return require("harpoon.ui").nav_file(5) end)
vim.keymap.set('n', '<leader>h4', function() return require("harpoon.ui").nav_file(6) end)
vim.keymap.set('n', '<leader>h4', function() return require("harpoon.ui").nav_file(7) end)
vim.keymap.set('n', '<leader>h4', function() return require("harpoon.ui").nav_file(8) end)
vim.keymap.set('n', '<leader>h4', function() return require("harpoon.ui").nav_file(9) end)
