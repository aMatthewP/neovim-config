local status_ok, config = pcall(require, "lspconfig")

require("user.lsp.handlers").setup()
require("user.lsp.mason").setup()

if not status_ok then
	print("LSP not loaded")
	return
end

config.lua_ls.setup(require("user.lsp.settings.sumneko_lua"))
config.clangd.setup(require("user.lsp.settings.clangd"))
config.html.setup(require("user.lsp.settings.html"))
config.cmake.setup(require("user.lsp.settings.cmake"))
config.pyright.setup(require("user.lsp.settings.pyright"))
config.emmet_ls.setup(require("user.lsp.settings.emmet_ls"))
config.css_lsp.setup(require("user.lsp.settings.css_lsp"))
config.pylint.setup{}
config.ts_ls.setup{}
config.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}
