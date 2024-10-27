-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')
  use('arcticicestudio/nord-vim')
  use('NLKNguyen/papercolor-theme')
  use('pappasam/papercolor-theme-slim')

  use({
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
      requires = { {'nvim-lua/plenary.nvim'} }
  })

  use("https://github.com/github/copilot.vim")

  use({
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  })

  use('nvim-treesitter/nvim-treesitter-context')

  use("mbbill/undotree")

  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use('hrsh7th/cmp-path')
  use("hrsh7th/nvim-cmp")
  use("L3MON4D3/LuaSnip")
end)
