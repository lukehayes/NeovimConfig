
local map = vim.api.nvim_set_keymap
local opt = {noremap = true}

-- Telescope Color Scheme Picker
-- vim.keymap.set('n', '<leader>as', require('telescope.builtin').colorscheme, { desc = '[?] Find recently opened files' })

-- Window Movement
map('n', '<C-l>', '<C-w>l', opt)
map('n', '<C-h>', '<C-w>h', opt)
map('n', '<C-j>', '<C-w>j', opt)
map('n', '<C-k>', '<C-w>k', opt)

-- Window Closing
map('n', '<leader>c', '<C-w>c', opt)
map('n', '<leader>bd', ':bdelete<CR>', opt)
map('n', '<leader>ba', ':%bd<CR>', opt) -- Close all buffers
