local dap, dapui, dapgo, dapvirtualtext = require("dap"), require("dapui"), require("dap-go"), require("nvim-dap-virtual-text")
local nvimTree = require("nvim-tree")

vim.fn.sign_define("DapBreakpoint", { text="🔴", texthl="red", linehl="", numhl="" })

-- dap.setup()
dapui.setup()
dapgo.setup()
dapvirtualtext.setup()

dap.listeners.after.event_initialized["dapui_config"] = function ()
	dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function ()
	dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function ()
	dapui.close()
end

local dapcpp = require("user.dap.settings.cpp")

dap.adapters.lldb = dapcpp.adapters.lldb
dap.configurations.cpp = dapcpp.configs
