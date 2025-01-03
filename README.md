# NeoVim

> :warning: Work in Progress: This configuration is still under active development and may undergo significant changes. While every effort is made to ensure stability, please be aware that bugs and breaking changes may occur.
> 

Welcome to my personal NeoVim configuration! 
This repository provides a modern, feature-rich development environment right in your terminal. Whether you're a seasoned developer or a beginner looking for a versatile text editor setup, this configuration has got you covered.

This configuration is primarily written in Lua and harnesses the power of various plugins to provide features like autocompletion, syntax highlighting, git integration, and more.
The use of the Lazy.nvim plugin manager ensures a quick and straightforward setup process, allowing you to focus more on your coding and less on configuring your development environment.

Key features include:

- A carefully curated set of plugins that enhance your coding experience
- Out-of-the-box Language Server Protocol (LSP) support for better language understanding
- Robust git integration that visually represents your code modifications
- Fuzzy finding capabilities for quick file navigation
- An autocompletion setup that predicts and suggests code as you type
- Snippets support for efficient code generation
- Automatic handling and installation of dependencies via Lazy.nvim
- Whether you code in Python, JavaScript, Rust, or any other programming language, this NeoVim configuration aims to provide a robust and versatile development environment.

Feel free to use this as a starting point for your configuration or as an inspiration to customize your current setup. Happy coding!

<details>
  <summary><h1>🔨 Installation</h1></summary>

Please follow these steps to install and setup this NeoVim configuration:

Prerequisites: Ensure you have NeoVim installed on your system. If not, you can follow this [guide](https://github.com/neovim/neovim/wiki/Installing-Neovim) to install it.

Clone the repository: Clone this repository to your local machine using the following command in your terminal:
for Unix-based systems
```bash
git clone https://github.com/RodrigoRalhaMoreira/neovim-config ~/.config/nvim
```

for Windows systems
```bash
git clone https://github.com/RodrigoRalhaMoreira/neovim-config ~/AppData/Local/nvim/
```

Install Lazy.nvim (the plugin manager): This configuration uses the Lazy.nvim plugin manager.
If you don't have it installed, the configuration will automatically install it for you on the first run.
If you wish to install it manually, follow the instructions in the [Lazy.nvim repository](https://github.com/folke/lazy.nvim).

Install plugins: Start NeoVim, the plugins specified in the configuration will be automatically installed by Lazy.nvim.

</details>

<details>
  <summary><h1>🔌 Plugins</h1></summary>

1. **Utility Plugins**: [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) (provides utility functions for NeoVim development and configuration).
2. **Themes & Colors**: [bluz71/vim-nightfly-guicolors](https://github.com/bluz71/vim-nightfly-colors), [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim), [projekt0n/github-nvim-theme](https://github.com/projekt0n/github-nvim-theme) (color scheme plugins).
3. **Navigation**: [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) (enables navigation between tmux panels and Vim windows), [szw/vim-maximizer](https://github.com/szw/vim-maximizer) (maximizes/restores Vim window), [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) (file explorer).
4. **Code Manipulation**: [tpope/vim-surround](https://github.com/tpope/vim-surround), [vim-scripts/ReplaceWithRegister](https://github.com/vim-scripts/ReplaceWithRegister) (change, delete, add surroundings), [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) (comment/uncomment lines).
5. **UI Enhancements**: [kyazdani42/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) (icons for file types), [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) (customizable status line), [glepnir/lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) (LSP UI improvements), [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) (automatic pairing of characters), [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) (Git decorations in sign column).
6. **Search**: [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (extensible fuzzy finder).
7. **Autocompletion**: [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) (contextual suggestions), [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip), [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) (code snippets), [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim), [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (LSP support for autocompletion, syntax checking), [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) (use any program as a language server).
8. **Syntax**: [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (syntax highlighting and indentation based on Tree-sitter).
9. **AI-powered Code Suggestions**: [github/copilot.vim](https://github.com/github/copilot.vim) (integration with GitHub's Copilot service).
    
</details>

<details>
  <summary><h1>📁 Directory Structure & Configuration Files</h1></summary>
    
The configuration files for the plugins and the core settings are organized as follows:
    
  - [init.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/init.lua): Entry point for all plugins and configurations.
- **Core Settings**:
  - [lua/rodrigo/core/colorscheme.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/core/colorscheme.lua): Defines the colorscheme for NeoVim.
  - [lua/rodrigo/core/keymaps.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/core/keymaps.lua): Specifies keymaps for general operations and plugins.
  - [lua/rodrigo/core/options.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/core/options.lua): Configures various editor options, including line numbers, indentation, search settings, cursor line, appearance, backspace behavior, clipboard settings, and split windows behavior.
- **Plugin Configuration Files**:
  - [lua/rodrigo/plugins/lualine.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/lualine.lua): Configures lualine for status line customization.
  - [lua/rodrigo/plugins/nvim-cmp.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/nvim-cmp.lua): Configures nvim-cmp for auto-completion and integrates luasnip for snippets and lspkind for language-specific icons.
  - [lua/rodrigo/plugins/nvim-tree.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/nvim-tree.lua): Sets up and customizes nvim-tree for file navigation.
  - [lua/rodrigo/plugins/nvim-web-devicons.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/nvim-web-devicons.lua): Sets up and customizes nvim-web-devicons for sidebar file icons.
  - [lua/rodrigo/plugins/telescope.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/telescope.lua): Configures the Telescope plugin for fuzzy finding and picker navigation.
  - [lua/rodrigo/plugins/treesitter.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/treesitter.lua): Sets up nvim-treesitter for syntax highlighting and specifies parser languages.
  - [lua/rodrigo/plugins/autopairs.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/autopairs.lua): Sets up nvim-autopairs to automatically pair characters like brackets.
  - [lua/rodrigo/plugins/comment.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/comment.lua): Sets up the Comment plugin for easy commenting/uncommenting of code lines.
  - [lua/rodrigo/plugins/copilot.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/copilot.lua): Configures the copilot.vim plugin for AI-powered code suggestions.
  - [lua/rodrigo/plugins/gitsigns.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/gitsigns.lua): Configures the gitsigns.nvim plugin, which shows Git diff markers.
- **Language Server Protocol (LSP) Configuration Files**:
  - [lua/rodrigo/plugins/lsp/lspconfig.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/lsp/lspconfig.lua): Configures the lspconfig plugin for LSP support and the cmp-nvim-lsp for autocompletion. It also specifies LSP servers for specific languages.
  - [lua/rodrigo/plugins/lsp/lspsaga.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/lsp/lspsaga.lua): Configures the lspsaga plugin for a UI for LSP interactions.
  - [lua/rodrigo/plugins/lsp/mason.lua](https://github.com/RodrigoRalhaMoreira/neovim-config/blob/master/lua/rodrigo/plugins/lsp/mason.lua): Configures the mason plugin for managing language servers and linters. It also configures mason-lspconfig and mason-null-ls for interaction with lspconfig and null-ls respectively.

</details>
