-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Lua
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
end
}
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
          -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
}
-- Color themes and other customization plugins
use('Mofiqul/dracula.nvim')
use({'catppuccin/nvim', as = "catpuccin"})
use('ellisonleao/gruvbox.nvim')
use({ 'rose-pine/neovim', as = 'rose-pine' })
use({'feline-nvim/feline.nvim', branch = '0.5-compat'})
end)
