local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

--Autocmmand reloads neovim whenever I save plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

  -- My plugins here
	--start screen nvim 
	use "goolord/alpha-nvim"

	--comments
	use "numToStr/Comment.nvim"

	-- Themes
	--use { "ellisonleao/gruvbox.nvim" }
	-- use "EdenEast/nightfox.nvim"
	-- use "sainnhe/gruvbox-material"
	-- use "joshdick/onedark.vim"
	-- use "marko-cerovac/material.nvim"
	use "navarasu/onedark.nvim"
	use { "catppuccin/nvim", as = "catppuccin" }


	--File explorer
	use {
      "nvim-tree/nvim-tree.lua",
      tag = "nightly"
	}
	use "nvim-tree/nvim-web-devicons"


 --  --Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use "nvim-telescope/telescope-file-browser.nvim"

  --Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }

	--snippets and autopairs and tags
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

	use "windwp/nvim-ts-autotag"

	--Lualine
	use {
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true }
	}

	--Editor Tabs
	use {
		"akinsho/bufferline.nvim",
		tag = "v3.*",
		-- requires ="nvim-tree/nvim-web-devicons" --optional
	}
	use "ojroques/nvim-bufdel"

	--Terminal in nvim
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end }
	--autocomplete
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-nvim-lua"
	use "hrsh7th/cmp-nvim-lsp-signature-help"
	use "saadparwaiz1/cmp_luasnip"

	--snippets
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"

	--LSP
	use "neovim/nvim-lspconfig"
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"

	--Rooter
	use {
		"notjedi/nvim-rooter.lua",
	}

	--DAP
	use "mfussenegger/nvim-dap"
	use "rcarriga/nvim-dap-ui"
	use "leoluz/nvim-dap-go"
	use "nvim-telescope/telescope-dap.nvim"
	use "theHamsta/nvim-dap-virtual-text"

	--Project
	 use "ahmedkhalf/project.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

