-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "c",
      "vimdoc",
      "markdown",
      "query",
    },
    auto_install = true,
    highlight = {
      enable = true,
    },
  },
}
