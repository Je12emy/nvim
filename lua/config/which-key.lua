
require("which-key").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below 
  plugins = {
 
  }
}

local wk = require("which-key")

--wk.register({
  --["<leader>b"] = "Open file explorer"
--})

wk.register({
  w = {
    name = "Window, Tab and Wiki",
    v = "Vertical split",
    s = "Horizontal split",
    h = "Decrease vertical split",
    l = "Increase vertial split right",
    j = "Decrease horizontal split",
    k = "Increase horizontal split",
    t = "Open window in a new tab",
    w = "Open vimwiki index",
    ['='] = "Resize all splits",
  }
}, {prefix = "<leader>" })
 
