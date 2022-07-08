-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

	-- Colorschemes	
	-- 
    -- Nightfox 
    use "EdenEast/nightfox.nvim"

    -- Catppuccin 
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })

    -- Gotham
	use 'whatyouhide/vim-gotham'

    -- Gruvbox
	use 'gruvbox-community/gruvbox'


	-- Functionality	
	-- 
    -- Nvim Tree
    use { 'kyazdani42/nvim-tree.lua' }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Neoformat (Use uncrustify, installed with pacman/aur for C/C++)
    use { 'sbdchd/neoformat' }

    -- Vim Fugitive
    use { 'tpope/vim-fugitive' }

    -- BufExplorer
    use { 'jlanzarotta/bufexplorer' }

    -- Zen Mode
    use {"folke/zen-mode.nvim"}

    -- NerdCommenter
    use 'scrooloose/nerdcommenter'

    -- Indent Blankline
    use 'lukas-reineke/indent-blankline.nvim'

    -- Ultisnips
    --use 'sirver/ultisnips'
end)
