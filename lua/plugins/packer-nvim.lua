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
      'airblade/vim-rooter'
    }
    use 'kyazdani42/nvim-web-devicons'
    -- Tab
    use 'romgrk/barbar.nvim'
    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope.nvim'
    -- Floating Terminal
    use "voldikss/vim-floaterm"
    -- Status Line
    use "hoob3rt/lualine.nvim"
    -- Theme
    use 'EdenEast/nightfox.nvim'
    use 'glepnir/dashboard-nvim'
    use 'eddyekofo94/gruvbox-flat.nvim'
    -- Utils
    use 'tpope/vim-surround'
    use 'preservim/nerdcommenter'
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
    use 'nvim-lua/plenary.nvim'
    use 'sbdchd/neoformat'
    use 'onsails/lspkind-nvim'
    -- Git
    use 'airblade/vim-gitgutter'
    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    --"glepnir/lspsaga.nvim";
    use { 'jose-elias-alvarez/nvim-lsp-ts-utils', requires='jose-elias-alvarez/null-ls.nvim' }
    -- Completition + Snippets
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/vim-vsnip-integ'
    use 'hrsh7th/vim-vsnip'
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
