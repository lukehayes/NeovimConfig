-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    -- Nightfox colorscheme
    use "EdenEast/nightfox.nvim"

    -- Catppuccin colorscheme
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })

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
end)
