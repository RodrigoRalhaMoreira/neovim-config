-- plugins setup
require("rodrigo.plugins-setup")

-- plugins configs
require("rodrigo.plugins.nvim-web-devicons")
require("rodrigo.plugins.comment")
require("rodrigo.plugins.nvim-tree")
require("rodrigo.plugins.lualine")
require("rodrigo.plugins.telescope")
require("rodrigo.plugins.nvim-cmp")
require("rodrigo.plugins.autopairs")
require("rodrigo.plugins.treesitter")
require("rodrigo.plugins.gitsigns")
require("rodrigo.plugins.copilot")
require("rodrigo.plugins.zen-mode")
require("rodrigo.plugins.catpuccin")

-- plugin configs lsp
require("rodrigo.plugins.lsp.mason")
require("rodrigo.plugins.lsp.lspsaga")
require("rodrigo.plugins.lsp.lspconfig")
require("rodrigo.plugins.lsp.null-ls")

-- core setup
require("rodrigo.core.options")
require("rodrigo.core.keymaps")
require("rodrigo.core.colorscheme")
