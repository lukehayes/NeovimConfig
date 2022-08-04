" VimScript
"
" Close a buffer without closing the window.
" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction


" All other config is written in Lua and starts below.
"
lua << EOF
vim.g.mapleader = "'"

-- Initialize Packer
-- 
require("plugin-init")
--require("nvim-lsp-installer").setup()

-- Plugin Settings
-- 
require("plugins.nvim-tree")
require("plugins.zen-mode")
require("plugins.indent-blankline")
require("plugins.telescope")

-- Options
-- 
require("core.options")
require("core.mappings")
require("lsp")


-- Set Python path explicitly for ultisnips - saves having to install neovim through pip
-- or having to build neovim with Python support.
-- 
vim.g.python3_host_prog = '/usr/bin/python3'
EOF

