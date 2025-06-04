local map = vim.api.nvim_set_keymap
local opt = { noremap = true }

-- Telescope Color Scheme Picker
-- vim.keymap.set('n', '<leader>as', require('telescope.builtin').colorscheme, { desc = '[?] Find recently opened files' })

-- Window Movement
--map('n', '<leader>wl', '<C-w>l', opt)
--map('n', '<leader>wh', '<C-w>h', opt)
--map('n', '<leader>wj', '<C-w>j', opt)
--map('n', '<leader>wk', '<C-w>k', opt)

map("n", "<leader>wh", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<leader>wl", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<leader>wj", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<leader>wk", "<C-w><C-k>", { desc = "Move focus to the upper window" })
map("n", "<leader>wv", "<C-w>v", { desc = "Create new vertical pane" })
map("n", "<leader>ws", "<C-w>s", { desc = "Create new horiztonal pane" })

-- Window Closing
-- map("n", "<leader>c", "<C-w>c", opt)
map("n", "<leader>bd", ":bdelete<CR>", opt)
map("n", "<leader>ba", ":%bd<CR>", opt) -- Close all buffers

-- Buffer Navigation
map("n", "<S-h>", ":bn<CR>", opt)
map("n", "<S-l>", ":bp<CR>", opt)

-- Comments
map("n", "<leader>cc", "gcc", { desc = "Comment line", noremap = false })

-- Telescope
map("n", "<leader>t", ":Telescope<CR>", { desc = "Open Telescope" })

-- Open todo.md in the current project
map("n", "<leader>ll", ":e " .. vim.fn.getcwd() .. "/todo.md<CR>", { desc = "Open todo.md" })

return {}
