local port = 42069

local M = {
	adapters = {
		codelldb = {
			type = 'server',
			port = "${port}",
			executable = {
				-- CHANGE THIS to your path!
				command = 'C:\\Users\\admin\\.vscode\\extensions\\vadimcn.vscode-lldb-1.9.2\\adapter\\codelldb.exe',
				args = {"--port", "${port}"},
				-- On windows you may have to uncomment this:
				detached = false,
			}
		},
		lldb = {
			type = "executable",
			command = "C:\\Program Files\\LLVM\\bin\\lldb-vscode.exe",
			name = "lldb"
		}
	},

	configs = {
		-- codelldb
		{
			name = "Launch file",
			type = "codelldb",
			request = "launch",
			program = function()
				return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
			end,
			cwd = '${workspaceFolder}',
			stopOnEntry = false,
		},

		-- lldb
		{
			name = "Launch",
			type = "lldb",
			request = "launch",
			program = function ()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. '/', "file")
			end,
			cwd = "${workspaceFolder}",
			stopOnEntry = true,
			args = {},
		}
	}
}

return M
