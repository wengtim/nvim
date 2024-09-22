-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- == Examples of Adding Plugins ==

  -- ThePrimeagen Plugins
  "ThePrimeagen/vim-be-good",
  "ThePrimeagen/harpoon",
  "nvim-lua/plenary.nvim",

  -- Other
  "mbbill/undotree",
  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {}
      return opts
    end,
  },
}
