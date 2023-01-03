require('nvim-rooter').setup {
  rooter_patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "CMakeLists.txt", ".gitignore", "./src", "lua" , "./plugin", "./.vscode" --[[ "compile_flags.txt" ]] },
  trigger_patterns = { '*' },
  manual = false,
}

-- local group = vim.api.nvim_create_augroup("ChangeRootDir", { clear = true })
-- vim.api.nvim_create_autocmd("BufEnter", {
-- 	group = group,
-- 	-- pattern = "!*.exe",
-- 	callback = function ()
-- 		-- if vim.bo.filetype == "EXE" then
-- 		-- 	print(vim.bo.filetype)
-- 		-- 	return
-- 		-- elseif vim.bo.filetype ~= "executable" then
-- 		-- 	vim.cmd ":RooterToggle"
-- 		-- 	return
-- 		-- end
-- 		if vim.bo.filetype ~= "toggleterm" then
-- 			vim.cmd ":RooterToggle"
-- 		end
-- 		print(vim.bo.filetype)
-- 		print(vim.bo.buftype)
-- 	end
-- })
