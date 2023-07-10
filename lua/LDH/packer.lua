-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	-- Packer
	-- 
	use 'wbthomason/packer.nvim'

	-- Telescope
	-- 
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Treesitter
	-- 
	use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}

	-- Colour Schemes
	-- 
       use { 'savq/melange-nvim' }
       use { 'rose-pine/neovim'  }


end)

