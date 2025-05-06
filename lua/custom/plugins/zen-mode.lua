return {
    "folke/zen-mode.nvim",

    config = function()
        require('zen-mode').setup({
            window = {
                width = 180
            }
        })

    -- Keymaps
    vim.keymap.set('n', '<leader>z', ':ZenMode<CR>', { silent = true })

    end
}
