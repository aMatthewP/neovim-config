require("bufferline").setup {
	options = {
		offsets = { {filetype = "NvimTree", text = "", padding = 1}},
		-- separator_style = "slant", -- | "thick" | "thin" | { 'any', 'any' },
		separator_style = "thin",
		enforce_regular_tabs = false --[[ | true ]],
		always_show_bufferline = true --[[ | false ]],
	}
}
