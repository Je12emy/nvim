local options = {
      theme = "catppuccin",
      disabled_filetypes = {'NvimTree'},
      section_separators = { left = '', right = ''},
      component_separators = { left = '', right = ''}
}

require('lualine').setup({
    options = options,
})
