-- ------------------------
-- -        PAQ           -   
-- ------------------------

local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

-- ------------------------
-- -      PLUGINS         -   
-- ------------------------

require "paq" {
    "savq/paq-nvim";                  -- Let Paq manage itself
    -- NERDTree
    "preservim/nerdtree";
    "ryanoasis/vim-devicons";
    "Xuyuanp/nerdtree-git-plugin";
    "tiagofumo/vim-nerdtree-syntax-highlight";
    "airblade/vim-rooter";
    -- Tab
    'romgrk/barbar.nvim';
    -- Telescope
    "nvim-lua/popup.nvim";
    "nvim-lua/plenary.nvim";
    "nvim-telescope/telescope.nvim";
    -- Floating Terminal
    "voldikss/vim-floaterm";
    -- Status Line
    "hoob3rt/lualine.nvim";
    -- Theme
    "EdenEast/nightfox.nvim";
    "mhinz/vim-startify";
    -- Utils
    "tpope/vim-surround";
    "preservim/nerdcommenter";
    "folke/which-key.nvim";
    "sheerun/vim-polyglot";
    {"nvim-treesitter/nvim-treesitter", run=':TSUpdate'};
    "nvim-treesitter/playground";
    {"prettier/vim-prettier", run='yarn install'};
    "ap/vim-css-color";
    "nvim-lua/plenary.nvim";
    -- Git
    "airblade/vim-gitgutter";
    -- LSP
    "neovim/nvim-lspconfig";
    "hrsh7th/nvim-compe";
    "glepnir/lspsaga.nvim";
    "jose-elias-alvarez/nvim-lsp-ts-utils";
    "jose-elias-alvarez/null-ls.nvim"; -- Req for ts-utils
    -- Vimwiki
    "vimwiki/vimwiki";
    -- Latex
    'lervag/vimtex';
}

-- ------------------------
-- -     Settings         -   
-- ------------------------

 --Startify
vim.g['webdevicons_enable'] = 1
vim.g['webdevicons_enable_startify'] = 1
vim.g['webdevicons_enable_airline_tabline'] = 1
vim.g['webdevicons_enable_airline_statusline'] = 1

 --NERDTree
vim.g['NERDTreeIgnore'] = {'^node_modules$'}

--VimWiki
vim.g['vimwiki_list'] = {{path = '~/Nextcloud/Notes', syntax = 'markdown', ext = '.md'}}

--Treesitter
require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
