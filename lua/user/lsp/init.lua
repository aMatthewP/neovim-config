local status_ok, config = pcall(require, "lspconfig")

require("user.lsp.handlers").setup()
require("user.lsp.mason").setup()

if not status_ok then
	print("LSP not loaded")
	return
end

config.sumneko_lua.setup(require("user.lsp.settings.sumneko_lua"))
config.clangd.setup(require("user.lsp.settings.clangd"))
config.html.setup(require("user.lsp.settings.html"))
config.pyright.setup()
config.cmake.setup(require("user.lsp.settings.cmake"))
config.tsserver.setup{}

