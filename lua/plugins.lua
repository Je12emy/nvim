-- ------------------------
-- -      PACKER          -   
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

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- FIle Explorer
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    use 'airblade/vim-rooter'
    -- Tab
    use 'romgrk/barbar.nvim'
    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    -- Floating Terminal
    use "voldikss/vim-floaterm"
    -- Status Line
    use "hoob3rt/lualine.nvim"
    -- Theme
    use 'EdenEast/nightfox.nvim'
    use 'glepnir/dashboard-nvim'
    -- Utils
    use "tpope/vim-surround"
    use 'preservim/nerdcommenter'
    use "folke/which-key.nvim"
    use 'sheerun/vim-polyglot'
    use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}
    use 'nvim-treesitter/playground'
    use 'norcalli/nvim-colorizer.lua'
    use "nvim-lua/plenary.nvim"
    use "sbdchd/neoformat";
    -- Git
    use 'airblade/vim-gitgutter'
    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    --"glepnir/lspsaga.nvim";
    use { 'jose-elias-alvarez/nvim-lsp-ts-utils', requires='jose-elias-alvarez/null-ls.nvim' }
    --use 'jose-elias-alvarez/null-ls.nvim'; -- Req for ts-uti
    -- Completition + Snippets
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/vim-vsnip-integ'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    -- Vimwiki
    use 'vimwiki/vimwiki'
    -- Latex
    use 'lervag/vimtex'
end)
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
