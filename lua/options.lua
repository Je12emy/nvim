local g = vim.g
local set = vim.opt
local bo = vim.bo
local o = vim.o

g.mapleader = ' '
set.syntax = 'on'
set.termguicolors = true
set.errorbells = false
set.relativenumber =  true
set.tabstop = 4 
set.softtabstop = 4
bo.swapfile = false
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true
set.wrap = false
set.smartcase = true
set.incsearch = true
set.clipboard = 'unnamed'
set.clipboard = 'unnamedplus'
set.hlsearch = true
set.timeoutlen = 1000
set.cursorline = true
set.spelllang = {'en','es'}
-- ------------------------
-- -       THEME          -   
-- ------------------------

require('nightfox').set()
