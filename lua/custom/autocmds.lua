--local group = vim.api.nvim_create_augroup("LukeCustomHooks", { clear = true} )

--vim.api.nvim_create_autocmd("BufWritePre",
    --{
        --command = 'echo %s/\s\+$//e',
        --group = group
    --}
--)

-- Trim trailing whitespace from end of every line.
--
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('trim_whitespaces', { clear = true }),
  desc = 'Trim trailing white spaces',
  pattern = 'bash,c,cpp,lua,java,go,php,javascript,make,python,rust,perl,sql,markdown',
  callback = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '<buffer>',
      -- Trim trailing whitespaces
      callback = function()
        -- Save cursor position to restore later
        local curpos = vim.api.nvim_win_get_cursor(0)
        print("Whitespace removed.")
        -- Search and replace trailing whitespaces
        vim.cmd([[keeppatterns %s/\s\+$//e]])
        vim.api.nvim_win_set_cursor(0, curpos)
      end,
    })
  end,
})
