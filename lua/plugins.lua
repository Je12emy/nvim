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
    -- FIle Explorer
    'kyazdani42/nvim-tree.lua';
    "kyazdani42/nvim-web-devicons";
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
    "glepnir/dashboard-nvim";
    -- Utils
    "AckslD/nvim-neoclip.lua";
    "tpope/vim-surround";
    "preservim/nerdcommenter";
    "folke/which-key.nvim";
    "sheerun/vim-polyglot";
    {"nvim-treesitter/nvim-treesitter", run=':TSUpdate'};
    "nvim-treesitter/playground";
    "norcalli/nvim-colorizer.lua";
    "nvim-lua/plenary.nvim";
    "sbdchd/neoformat";
    -- Git
    "airblade/vim-gitgutter";
    -- LSP
    "neovim/nvim-lspconfig";
    --"glepnir/lspsaga.nvim";
    "jose-elias-alvarez/nvim-lsp-ts-utils";
    "jose-elias-alvarez/null-ls.nvim"; -- Req for ts-utils
    -- Completition + Snippets
    "hrsh7th/cmp-nvim-lsp";
    "hrsh7th/vim-vsnip-integ";
    "hrsh7th/vim-vsnip";
    "hrsh7th/cmp-buffer";
    "hrsh7th/nvim-cmp";
    -- Vimwiki
    "vimwiki/vimwiki";
    -- Latex
    'lervag/vimtex';
}

-- ------------------------
-- -     Settings         -   
-- ------------------------

--VimWiki
function getWikiPath()
    if os.getenv('os') == 'Windows_NT'
        then
            return 'D:/Nextcloud/Notes'
        else 
            return '~/Nextcloud/Notes'
    end
end

vim.g['vimwiki_list'] = {{path = getWikiPath(), syntax = 'markdown', ext = '.md'}}

--Treesitter
require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

-- ------------------------
-- -   Plug Configs       -   
-- ------------------------

require('config/lualine')
require('config/neoclip')
require('config/nvim-cmp')
require('config/telescope')
require('config/which-key')
require('config/dashboard-nvim')
require('config/nvimtree')
