
-- NvimTree
vim.keymap.set('n', '<Leader>nn', ':NvimTreeToggle<CR>')

-- Colorscheme
vim.keymap.set('n', '<Leader>as', ':colorscheme ')

-- Telescope
vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>lg', ':Telescope live_grep<CR>')

-- Vim FuGITive
vim.keymap.set('n', '<Leader>co', ':Git commit -m ""<LEFT>')
vim.keymap.set('n', '<Leader>g',  ':G<CR>')

-- BufExplorer
vim.keymap.set('', '<Leader>o',   ':BufExplorer<CR>')
vim.keymap.set('', '<Leader>bd',  ':Bclose<CR>')

-- Movement
--
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-h>', '<C-w>h>', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j>', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k>', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l>', opts)

-- Remap : to space
vim.keymap.set('n', '<SPACE>', ':')

-- Open and close brackets
local opts = { noremap = true }
vim.keymap.set('i', '(', '()<Esc>i', opts)
vim.keymap.set('i', '{', '{}<Esc>i', opts)
vim.keymap.set('i', '{<CR<>', '{<CR>}<Esc>O', opts)
vim.keymap.set('i', '[', '[]<Esc>i', opts)
vim.keymap.set('i', '<', '<><Esc>i', opts)
vim.keymap.set('i', "'", "''<Esc>i", opts)
vim.keymap.set('i', '"', '""<Esc>i', opts)
