local set = vim.opt

set.relativenumber = true
set.number = true
set.termguicolors = true
set.expandtab = true
set.smarttab = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.numberwidth = 4
set.signcolumn = "yes"
set.expandtab = false

set.hlsearch = true
set.smartcase = true
set.incsearch = true
set.ignorecase = true
set.smartindent = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.fileencoding = "utf-8"
set.cursorline = true

set.shell = vim.fn.executable "pwsh" and "pwsh" or "powershell"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

vim.opt.list = true
vim.opt.listchars:append("tab:❯ ,trail:·,extends:◣,precedes:◢,nbsp:○")

--Treesitter folding
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldlevel = 9

--Backspace
set.backspace = "indent,eol,start"

--Clipboard
set.clipboard:append("unnamedplus")

-- set.shm = "filnxtToOF"

--Neovide
if vim.g.neovide then
	--Font
	-- set.guifont="FiraCode Nerd Font:h11"
	set.guifont="NotoMono Nerd Font Mono:h12"
	-- set.guifont="CaskaydiaCove Nerd Font:h11"
	
	vim.g.neovide_remember_window_position = true
	-- vim.g.neovide_transparency = 0.90
	vim.g.neovide_scale_factor = 1.0
	vim.g.neovide_no_idle = true
	-- vim.g.neovide_refresh_rate_idle = 60
-- else
-- 	vim.cmd "highlight Normal ctermbg=none guibg=none"
-- 	vim.cmd "highlight NonText ctermbg=none guibg=none"
end

vim.opt.undofile = true
