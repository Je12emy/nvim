" ------------------------
" -      Dictionary      -   
" ------------------------

lua << EOF
require("which-key").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below 
}

local wk = require("which-key")

wk.register({
  ["<leader>b"] = "Open file explorer"
})

wk.register({
  w = {
    name = "Window Management",
    v = "Vertical split",
    s = "Horizontal split",
    h = "Move focus left",
    j = "Move focus down",
    k = "Move focus up",
    l = "Move focus right",
    t = "Open window in a new tab",
    ['+'] = "Increase window size",
    ['-'] = "Decrease window size",
  },
  t = {
    name = "Tab Management",
    n = "Go to the next tab",
    p = "Go to the previous tab",
    s = "Open the current split in a new tab",
  },
  c = {
    name = "Code Manipulation",
    a = "Open code actions dialog",
    f = "Format selected code",
    q = "Quick fix selected code",
    c = {
      name = "Code Commenting",
      ['<space>'] = "Toggle comment",
      m = "Minimal comment",
      s = "Sexy comment",
    }
  }
}, {prefix = "<leader>" })
 
EOF

