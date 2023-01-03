local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


vim.g.mapleader = " "
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

--Modes
--	normal_mode = "n"
--	insert_mode = "i"
--	visual_mode = "v"
--	visual_block_mode = "x",
--	term_mode = "t",
--	command_mode = "c",


--Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Buffer Navigation
-- keymap("n", "<leader><Tab>", ":bnext<CR>", opts)
-- keymap("n", "<leader><Shift><Tab>", ":blast<CR>", opts)
keymap("n", "gT", ":bprevious<CR>", opts)
keymap("n", "gt", ":bnext<CR>", opts)
keymap("n", "<A-h>", ":bprevious<CR>", opts)
keymap("n", "<A-l>", ":bnext<CR>", opts)

--Set comment
keymap("n", "<C-/>", "gcc", opts)
keymap("i", "<C-/>", "gcc", opts)

--Set Ctrl + Backspace to delete by word in insert mode
-- keymap('i', '<C-Backspace>', "<C-W>", opts)
-- keymap('c', '<C-Backspace>', "<C-W>", { noremap = true, silent = false })
keymap('i', '<C-BS>', "<C-W>", opts)
keymap('c', '<C-BS>', "<C-W>", { noremap = true, silent = false })
keymap('i', '<C-H>', '<C-W>', opts)
keymap('c', '<C-H>', '<C-W>', { noremap = true, silent = false })

--Set Ctrl + B toggle NvimTree
--Ctrl + k to see full path in Nvim
keymap('n', '<C-E>', ':NvimTreeToggle<CR>', opts)

--Set ":Telescope find_files"
keymap("n", "<C-P>", ":Telescope find_files<CR>", opts)

--Set ctrl + z
keymap("i", "<C-Z>", "<C-O>u", opts)

--Set ctrl + c as escape
-- keymap("i", "<leader>a", "<Esc>", opts)
keymap("i", "<C-C>", "<Esc>", opts)
keymap("n", "<C-C>", "<Esc>", opts)
keymap("c", "<C-C>", "<Esc>", opts)

--Set ctrl + s as save
keymap("n", "<C-S>", ":w<CR>", opts)
keymap("i", "<C-S>", "<C-C>:w<CR>", opts)
keymap("n", "<C-S-s>", ":wa<CR>", opts)
keymap("i", "<C-S-s>", "<C-C>:wa<CR>", opts)

--Set d as _d so no buffer overflow & set x as cut
keymap("n", "d", '"_d', opts)
keymap("n", "dd", '"_dd', opts)
keymap("n", "x", 'd', opts)
keymap("n", "xx", 'dd', opts)

keymap("v", "d", '"_d', opts)
-- keymap("v", "dd", '"_dd', opts)
keymap("v", "x", 'd', opts)
-- keymap("v", "xx", 'dd', opts)

--Set c to "c
keymap("n", "c", '"_c', opts)

--Clear search highlights
keymap("n", "<leader>h", ":nohl<CR>", opts)

--Set ctrl + v as paste
keymap("i", "<C-v>", "<C-O>p", { noremap = true })

--Open live server in cwd
keymap("n", "<leader>o", ":!live-server lua vim.fn.getcwd()<CR>", opts)

--Dap

keymap("n", "<F5>", ":lua require'dap'.continue()<CR>", opts)
keymap("n", "<F3>", ":lua require'dap'.step_over()<CR>", opts)
keymap("n", "<F2>", ":lua require'dap'.step_into()<CR>", opts)
keymap("n", "<F12>", ":lua require'dap'.step_out()<CR>", opts)
keymap("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
keymap("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
keymap("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", opts)
keymap("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>", opts)

keymap("n", "<C-d>", "<C-d>zz", opts);
keymap("n", "<C-u>", "<C-u>zz", opts);


-- neovide settings
if vim.g.neovide == true then
	vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", { silent = true})
	vim.api.nvim_set_keymap('i', '<F11>', "<C-O>:let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", { silent = true})
end

keymap("n", "<leader>w", ":BufDel<CR>", { silent = true})
