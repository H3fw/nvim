require("config.globals")
require("config.options")
require("config.autocmds")

-- Theme
vim.pack.add({
  "https://github.com/rebelot/kanagawa.nvim",
  "https://github.com/folke/tokyonight.nvim",
  "https://github.com/catppuccin/nvim",
  "https://github.com/olimorris/onedarkpro.nvim",
})
vim.cmd("colorscheme kanagawa-dragon")

-- Which Key
vim.pack.add({"https://github.com/folke/which-key.nvim"})
require('which-key').setup({
  preset = "helix",
})
require('which-key').add(require('plugins.which-keymaps'))

-- File Explorer
vim.pack.add({"https://github.com/stevearc/oil.nvim"})
require('oil').setup()

-- Mini.nvim
vim.pack.add({"https://github.com/nvim-mini/mini.ai"})
require('mini.ai').setup()

vim.pack.add({"https://github.com/nvim-mini/mini.operators"})
require('mini.operators').setup()

vim.pack.add({"https://github.com/nvim-mini/mini.surround"})
require('mini.surround').setup()

vim.pack.add({"https://github.com/nvim-mini/mini.icons"})
require('mini.icons').setup()

-- Terminal
vim.pack.add({"https://github.com/akinsho/toggleterm.nvim"})
require('toggleterm').setup()

-- FZF
vim.pack.add({"https://github.com/junegunn/fzf.vim"})

-- Treesitter
-- require("plugins.treesitter")

-- Mason
vim.pack.add({"https://github.com/mason-org/mason.nvim"})
require('mason').setup()

vim.pack.add({"https://github.com/neovim/nvim-lspconfig"})
vim.lsp.enable("clangd")

