local M = {}

M.settings ={
	name = "lldb",
	type = "cpp",
	request = "launch",
	program = function ()
		return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
	end,
	cwd = "${workspaceFolder}",
	args = {},
	terminal = "integrated"
}

return M
