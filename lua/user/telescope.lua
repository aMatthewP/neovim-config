local status, actions = pcall(require, "telescope.actions")

if not status then
	return
end

local tele_status, telescope = pcall(require, "telescope")

if not tele_status then
	return
end

-- require("user.project")

telescope.load_extension("file_browser")
telescope.load_extension("projects")

require("telescope").setup {
 extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
          ["<esc>"] = actions.close,
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}

