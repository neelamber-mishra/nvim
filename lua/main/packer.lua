vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "EdenEast/nightfox.nvim" -- Packer
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
	  'mbbill/undotree',
	  cmd = 'UndotreeToggle'  -- This ensures the command loads when needed
  }
  use('tpope/vim-fugitive')
  use('theprimeagen/harpoon')
  use "nvim-lua/plenary.nvim"
  -- In your plugins configuration
  use {
      "xeluxee/competitest.nvim",
      requires = "MunifTanjim/nui.nvim",
      config = function()
          require("competitest").setup({
              -- your configuration here (optional)
          })
      end
  }-- In your plugins configuration
  use {
      'L3MON4D3/LuaSnip',
      tag = 'v2.*', -- optional: use the latest stable version
      config = function()
          require("luasnip.loaders.from_vscode").lazy_load() -- optional: load friendly-snippets
      end
  }
  use 'rafamadriz/friendly-snippets'
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "saadparwaiz1/cmp_luasnip"
  use "neovim/nvim-lspconfig"
  use "p00f/cphelper.nvim"
  end)

