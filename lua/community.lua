-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.
---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Pack
  { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.swift" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.bash" },
  -- Colorscheme
  { import = "astrocommunity.colorscheme.onedarkpro-nvim", name = "onedarkpro" },
  { import = "astrocommunity.colorscheme.rose-pine", name = "rosepine" },
  { import = "astrocommunity.color.transparent-nvim" },
  -- Motion
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- Other
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.search.sad-nvim" },
  { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
}
