-- Check if lspconfig is available, if not bail out.
local status_ok, _ = pcall(require, "lspconfig")

if not status_ok then
	print("lspconfig could not be found.")
	return
end

-- If we reach here then we good. Setup lsp language servers.
local lspconfig = require("lspconfig")
local servers = {'clangd'}

local on_attach = function(client, bufnr)

	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr,...) end

	local opts = {noremap=true, silent=true}

	buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	buf_set_keymap('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

end

for _,server in ipairs(servers) do 

	lspconfig[server].setup {
		on_attach = on_attach
	}
end

