local options = {
      theme = 'catppuccin',
      disabled_filetypes = {'NvimTree'},
}

local sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },

require('lualine').setup({
    options = options,
    sections = sections
})
