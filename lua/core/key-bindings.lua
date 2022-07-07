
vim.keymap.set('n', '<Leader>nn', ':NvimTreeToggle<CR>')

vim.keymap.set('n', '<Leader>as', ':colorscheme ')

vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>lg', ':Telescope live_grep<CR>')

vim.keymap.set('n', '<Leader>gg', ':Git commit -m ""<left>')

vim.keymap.set('', '<Leader>o', ':BufExplorer<CR>')

vim.keymap.set('', '<Leader>bd', ':BClose<CR>')

-- Movement
vim.keymap.set('n', '<C-h>', '<C-w>h>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-j>', '<C-w>j>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-k>', '<C-w>k>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-l>', '<C-w>l>', {noremap = true, silent = true})

-- Open and close brackets
vim.keymap.set('i', '(', '()<Esc>i', {noremap = true})
vim.keymap.set('i', '{', '{}<Esc>i', {noremap = true})
vim.keymap.set('i', '{<CR<>', '{<CR>}<Esc>O', {noremap = true})
vim.keymap.set('i', '[', '[]<Esc>i', {noremap = true})
vim.keymap.set('i', '<', '<><Esc>i', {noremap = true})
vim.keymap.set('i', "'", "''<Esc>i", {noremap = true})
vim.keymap.set('i', '"', '""<Esc>i', {noremap = true})
