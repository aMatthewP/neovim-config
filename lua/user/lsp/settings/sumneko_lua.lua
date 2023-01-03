return {
	root_dir = require("lspconfig.util").root_pattern(".git", "lua"),
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[ vim.fn.expand("$VIMRUNTIME/lua") ] = true,
					[ vim.fn.stdpath("config") .. "/lua" ] = true,
				},
			},
		},
	},
}
