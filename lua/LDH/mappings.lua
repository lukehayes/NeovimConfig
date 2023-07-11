-- Leader key
--
vim.g.mapleader = " "

-- Nice defaults, indentation etc.
--
vim.g.shiftwidth  = 4
vim.g.tabstop     = 4
vim.g.softtabstop = 4
vim.g.expandtab   = true
vim.opt.wrap      = false

vim.opt.nu             = true
vim.opt.relativenumber = true
vim.opt.incsearch      = true
vim.opt.termguicolors  = true

-- Key remaps
--
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

local map = vim.api.nvim_set_keymap
map('n', '<C-l>', '<C-w>l', {noremap = true})
map('n', '<C-h>', '<C-w>h', {noremap = true})
map('n', '<C-j>', '<C-w>j', {noremap = true})
map('n', '<C-k>', '<C-w>k', {noremap = true})
map('n', '<leader>c', '<C-w>c', {noremap = true})
map('n', '<leader>bd', ':bdelete<CR>', {noremap = true})
