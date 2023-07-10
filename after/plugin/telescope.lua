local builtin = require('telescope.builtin')

require('telescope').setup {
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  },
  pickers.colorscheme.enable_preview = true
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>as', builtin.colorscheme, {})

