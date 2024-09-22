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
  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
}
