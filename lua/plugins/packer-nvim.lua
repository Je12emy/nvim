-- ------------------------
-- -      BOOTSTRAP       -   
-- ------------------------

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

-- ------------------------
-- -      PLUGINS         -   
-- ------------------------
require('packer').startup(function()
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Tree Explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use 'airblade/vim-rooter'
    use 'kyazdani42/nvim-web-devicons'
    -- Tab
    use 'romgrk/barbar.nvim'
    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope.nvim'
    -- Terminal
    use "voldikss/vim-floaterm"
    -- UI
    use 'glepnir/dashboard-nvim'
    use "hoob3rt/lualine.nvim"
    -- Themes
    use 'navarasu/onedark.nvim'
    use 'olimorris/onedarkpro.nvim'
    -- Utils
    use 'tpope/vim-surround'
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use 'sheerun/vim-polyglot'
    use {'nvim-treesitter/nvim-treesitter',
          run=':TSUpdate',
          config = function()
            require'nvim-treesitter.configs'.setup {
              highlight = { enable = true }
            }
          end
    }
    use 'nvim-treesitter/playground'
    use 'sbdchd/neoformat'
    use 'nvim-lua/plenary.nvim'
    use {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup {}
      end
    }
    use "folke/zen-mode.nvim"
    -- Git
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
    }
    use 'tpope/vim-fugitive'
    -- LSP
    use {
      'neovim/nvim-lspconfig', 
      { 'williamboman/nvim-lsp-installer' }
    }
    -- Completition + Snippets
    use 'onsails/lspkind-nvim'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    -- Svelte Development
    use 'leafOfTree/vim-svelte-plugin'
    -- Journaling
    use 'vimwiki/vimwiki'
    use { 
        "nvim-neorg/neorg",
        branch = "unstable",
        requires = "nvim-lua/plenary.nvim"
    }
    -- Documents
    use 'lervag/vimtex'
end)


-- ------------------------
-- -       THEME          -   
-- ------------------------
require('onedarkpro').load()
vim.cmd[[let g:onedark_style = 'darker']]
