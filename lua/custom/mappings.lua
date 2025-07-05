local map = vim.api.nvim_set_keymap
local opt = {noremap = true}

-- Telescope Color Scheme Picker
-- vim.keymap.set('n', '<leader>as', require('telescope.builtin').colorscheme, { desc = '[?] Find recently opened files' })

-- Window Movement
map('n', '<leader>wl', '<C-w>l', opt)
map('n', '<leader>wh', '<C-w>h', opt)
map('n', '<leader>wj', '<C-w>j', opt)
map('n', '<leader>wk', '<C-w>k', opt)

map('n', '<leader>wv', '<C-w>v', opt)
map('n', '<leader>ws', '<C-w>s', opt)

-- Window Closing
map('n', '<leader>c', '<C-w>c', opt)
map('n', '<leader>bd', ':bdelete<CR>', opt)
map('n', '<leader>ba', ':%bd<CR>', opt) -- Close all buffers

-- Buffer Navigation
map('n', '<S-h>', ':bn<CR>', opt)
map('n', '<S-l>', ':bp<CR>', opt)

-- Telescope
map('n', '<leader>t', ':Telescope<CR>', opt)

map('n', '<leader>ll', ':e'.. vim.fn.getcwd() .. '/todo.md<CR>', opt)

