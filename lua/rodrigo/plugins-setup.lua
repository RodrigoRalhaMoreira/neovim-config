local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Install your plugins here
require("lazy").setup({
	-- My plugins here

	--Plugin that other plugins use
	"nvim-lua/plenary.nvim",

	--Colorscheme
	{"bluz71/vim-nightfly-guicolors", commit="2e982ed8566bc087b0a905834092e5120406860e"}, --preferred coloscheme
	"ellisonleao/gruvbox.nvim",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"navarasu/onedark.nvim",

	"projekt0n/github-nvim-theme",

	-- Install without configuration
	"christoomey/vim-tmux-navigator", --tmux && split window navigation

	"szw/vim-maximizer", --maximizes and restores current window

	--replace words faster
	"tpope/vim-surround", -- fetch words between chars faster
	"vim-scripts/ReplaceWithRegister", --replace a certain text with copied content

	--comment with gcc
	"numToStr/Comment.nvim",

	--file explorer duhh
	"nvim-tree/nvim-tree.lua",

	--icons
	"kyazdani42/nvim-web-devicons",

	--status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons" },
	},

	--fuzzy finding
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },

	-- autocompletion
	"hrsh7th/nvim-cmp", -- completion plugin
	"hrsh7th/cmp-buffer", -- source for text in buffer
	"hrsh7th/cmp-path", -- source for file system paths

	-- snippets
	-- snippet engine
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
	},
	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	"rafamadriz/friendly-snippets", -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
	"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers, linters and formatters
	{"neovim/nvim-lspconfig", commit="b54abeb8b90af1cb4592ce937ee95ed8cb457801"}, -- easily configure language servers
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	{ "nvimdev/lspsaga.nvim", branch = "main" }, -- enhanced lsp uis
	{"jose-elias-alvarez/typescript.nvim", commit="de304087e6e49981fde01af8ccc5b21e8519306f"}, -- additional functionality for typescript server (e.g. rename file & update imports)
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion

	-- formatting & linting
	{"jose-elias-alvarez/null-ls.nvim", commit="db09b6c691def0038c456551e4e2772186449f35"}, -- configure formatters & linters
	"jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls
	"vyperlang/vim-vyper", -- vyper syntax HLer

	-- treesitter configuration
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = "windwp/nvim-ts-autotag", -- autoclose parens, brackets, quotes, etc...
	},

	-- auto closing
	"windwp/nvim-autopairs",

	-- git integration
	"lewis6991/gitsigns.nvim", -- show line modifications on left hand side

	--github copilot
	"github/copilot.vim", -- uses OpenAI Codex to suggest code and entire functions in real-time

	"folke/zen-mode.nvim", -- zen mode for nvim
})
