vim.pack.add({"https://github.com/nvim-treesitter/nvim-treesitter"})

require('nvim-treesitter.config').setup({
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "query",
    "markdown",
    "markdown_inline",
    "python",
    "javascript",
    "typescript",
    "cpp",
    "c",
    "rust",
    "haskell"
  },

  sync_install = false,
  auto_install = true,

  indent = { enable = true },
})
