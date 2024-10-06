local port = 42069

local M = {
	adapters = {
		cppvsdbg = {
			id = 'cppvsdbg',
			type = 'executable',
			command = vim.fn.stdpath("data").. '/mason/packages/cpptools/extension/debugAdapters/vsdbg/bin/vsdbg.exe',
			args = {
				"--interpreter=vscode"
			},
			options = {
				detached = false
			}
		},
		codelldb = {
			type = 'server',
			port = "42069",
			executable = {
				-- CHANGE THIS to your path!
				command = 'C:/Users/admin/AppData/Local/nvim-data/mason/packages/codelldb/extension/adapter/codelldb.exe',
				args = {"--port", "42069"},
				-- On windows you may have to uncomment this:
				detached = false,
			}
		},
		lldb = {
			type = "executable",
			command = "C:\\Program Files\\LLVM\\bin\\lldb-vscode.exe",
			name = "lldb"
		},
	},

	configs = {
		-- -- cppvsdbg
		{
			name = "Launch file",
			type = "cppvsdbg",
			request = "launch",
			program = function ()
				return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
			end,
			cwd = "${workspaceFolder}",
			stopOnEntry = true
		}
		-- {
		-- 	name = "Launch file",
		-- 	type = "codelldb",
		-- 	request = "launch",
		-- 	program = function()
		-- 		return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		-- 	end,
		-- 	cwd = '${workspaceFolder}',
		-- 	stopOnEntry = false,
		-- }
		-- codelldb
		-- {
		-- 	name = "Launch file",
		-- 	type = "codelldb",
		-- 	request = "launch",
		-- 	program = function()
		-- 		return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		-- 	end,
		-- 	cwd = '${workspaceFolder}',
		-- 	stopOnEntry = false,
		-- },
		-- {
		-- 	name = "Launch file",
		-- 	type = "cppvsdbg",
		-- 	request = "launch",
		-- 	program = function()
		-- 	  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		-- 	end,
		-- 	cwd = '${workspaceFolder}',
		-- 	stopAtEntry = true,
		-- }

		-- -- lldb
		-- {
		-- 	name = "Launch",
		-- 	type = "lldb",
		-- 	request = "launch",
		-- 	program = function ()
		-- 		return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. '/', "file")
		-- 	end,
		-- 	cwd = "${workspaceFolder}",
		-- 	stopOnEntry = true,
		-- 	args = {},
		-- }
	}
}

return M
