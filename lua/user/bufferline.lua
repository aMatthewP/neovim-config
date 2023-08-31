require("bufferline").setup {
	options = {
		-- mode = 'tabs',
		offsets = { {filetype = "NvimTree", text = "File Explorer", padding = 0}, { filetype = "dapui_scopes", text = "", padding = 1}},
		-- separator_style = "slope", -- | "thick" | "thin" | { 'any', 'any' },
		diagnostics = "nvim_lsp",
		enforce_regular_tabs = true ,
		always_show_bufferline = true,
	}
}

