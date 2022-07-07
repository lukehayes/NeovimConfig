
-- NvimTree
vim.keymap.set('n', '<Leader>nn', ':NvimTreeToggle<CR>')

-- Colorscheme
vim.keymap.set('n', '<Leader>as', ':colorscheme ')

-- Telescope
vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>lg', ':Telescope live_grep<CR>')

-- Vim FuGITive
vim.keymap.set('n', '<Leader>gg', ':Git commit -m ""<left>')

-- BufExplorer
vim.keymap.set('', '<Leader>o', ':BufExplorer<CR>')
vim.keymap.set('', '<Leader>bd', ':BClose<CR>')

-- Movement
--
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-h>', '<C-w>h>', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j>', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k>', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l>', opts)

-- Open and close brackets
local opts = { noremap = true }
vim.keymap.set('i', '(', '()<Esc>i', opts)
vim.keymap.set('i', '{', '{}<Esc>i', opts)
vim.keymap.set('i', '{<CR<>', '{<CR>}<Esc>O', opts)
vim.keymap.set('i', '[', '[]<Esc>i', opts)
vim.keymap.set('i', '<', '<><Esc>i', opts)
vim.keymap.set('i', "'", "''<Esc>i", opts)
vim.keymap.set('i', '"', '""<Esc>i', opts)
