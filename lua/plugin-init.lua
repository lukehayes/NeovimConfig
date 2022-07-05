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

end)
