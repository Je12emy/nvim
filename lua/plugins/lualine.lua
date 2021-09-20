local options = {
      theme = 'gruvbox-flat',
      section_separators = {'', ''},
      component_separators = {'', ''},
      disabled_filetypes = {'NvimTree'}
}

require('lualine').setup({
    options = options
})
