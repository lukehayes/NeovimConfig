vim.g.mapleader = "'"

-- Initialize Packer
require("plugin-init")

-- Options
-- 
require("core.options")
require("core.mappings")

-- Plugin Settings
-- 
require("plugins.nvim-tree")
require("plugins.zen-mode")

-- Set Python path explicitly for ultisnips - saves having to install neovim through pip
-- or having to build neovim with Python support.
-- 
vim.g.python3_host_prog = '/usr/bin/python3'
