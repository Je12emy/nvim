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
    use 'eddyekofo94/gruvbox-flat.nvim'
    use "hoob3rt/lualine.nvim"
    -- Utils
    use 'tpope/vim-surround'
    use 'shoukoo/commentary.nvim'
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
    -- Git
    use 'airblade/vim-gitgutter'
    use 'tpope/vim-fugitive'
    -- LSP
    use 'neovim/nvim-lspconfig'
    -- Completition + Snippets
    use 'onsails/lspkind-nvim'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    -- Vimwiki
    use 'vimwiki/vimwiki'
end)


-- ------------------------
-- -       THEME          -   
-- ------------------------

vim.cmd[[colorscheme gruvbox-flat]]
vim.g.gruvbox_flat_style = "dark"
vim.g.gruvbox_flat_style = "hard"
