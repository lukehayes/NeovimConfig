-- Leader key
--
vim.g.mapleader = " "

-- Nice defaults, indentation etc.
--
vim.go.shiftwidth  = 4
vim.go.tabstop     = 4
vim.go.softtabstop = 4
vim.go.expandtab   = true
vim.go.wrap        = false

vim.go.nu             = true
vim.go.relativenumber = true
vim.go.incsearch      = true
vim.go.termguicolors  = true

-- Key remaps
--
vim.keymap.set("n", "<leader>z", ':ZenMode<CR>')

local map = vim.api.nvim_set_keymap
local opt = {noremap = true}

-- Window Movement
map('n', '<C-l>', '<C-w>l', opt)
map('n', '<C-h>', '<C-w>h', opt)
map('n', '<C-j>', '<C-w>j', opt)
map('n', '<C-k>', '<C-w>k', opt)

-- Window Closing
map('n', '<leader>c', '<C-w>c', opt)
map('n', '<leader>bd', ':bdelete<CR>', opt)

-- Disbale Highlight
map('n', '<leader>h', ':noh<CR>', opt)

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
vim.keymap.set("i", "<TAB>", 'pumvisible() ? "<C-n>" : "<TAB>"', opts)
--vim.keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
