-- lervag/vimtex
-- sudo apt-get install texlive-full
vim.g["vimtext_view_method"] = 'zathura'
vim.g["text_flavor"] = 'latex'
vim.cmd[["
  let g:vimtex_compiler_latexmk_engines={'_':'-xelatex'}
  let g:vimtex_compiler_latexrun_engines={'_':'xelatex'}
"]]
