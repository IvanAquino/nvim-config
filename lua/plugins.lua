vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
  }
  use { "jose-elias-alvarez/null-ls.nvim" }
  use { "windwp/nvim-autopairs" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "editorconfig/editorconfig-vim" }
  use { "numToStr/Comment.nvim" }
  use { "JoosepAlviste/nvim-ts-context-commentstring" }

  -- Autocomplete
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
    }
  }
  use { "L3MON4D3/LuaSnip" }
  use { "rafamadriz/friendly-snippets" }

  use { 'lewis6991/gitsigns.nvim' }

  use { "RRethy/vim-illuminate" }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Terminal
  use { "akinsho/toggleterm.nvim" }

  -- Colorschemes
  use { "EdenEast/nightfox.nvim" }
  use { "folke/tokyonight.nvim" }
  use { "arcticicestudio/nord-vim" }
  use { "cocopon/iceberg.vim" }
  use { "luisiacc/gruvbox-baby" }
  use { "JoosepAlviste/palenightfall.nvim" }
end)
