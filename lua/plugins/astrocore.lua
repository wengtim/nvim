-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- lord/alpha-nvim
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs
      notifications = true, -- enable notifications
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        smartindent = true,
        scrolloff = 8,
        tabstop = 4,
        softtabstop = 4,
        shiftwidth = 4,
        expandtab = true,
        hlsearch = false,
        incsearch = true,
        updatetime = 50,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- visual mode
      v = {
        ["J"] = { ":m '>+1<CR>gv=gv" },
        ["K"] = { ":m '<-2<CR>gv=gv" },
      },

      -- insert mode
      i = {},

      -- normal mode
      n = {
        -- Harpoon Keymaps
        ["<Leader>a"] = { function() require("harpoon.mark").add_file() end, desc = "Add File to harpoon" },
        ["<Leader>fh"] = { function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon Menu" },
        ["<C-n>"] = { function() require("harpoon.ui").nav_next() end, desc = "Next harpoon tab" },

        -- Undo Tree
        ["<Leader>u"] = { vim.cmd.UndotreeToggle, desc = "Undo Tree Toggle" },

        -- Navigate between buffer
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        ["<Leader>ud"] = {
          function() require("notify").dismiss() end,
          desc = "Hide Notification",
        },
        ["<Leader>fw"] = {
          function() require("telescope.builtin").live_grep() end,
        },
        ["<Leader>s"] = { ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", desc = "Subsitute on Current Word" },
        ["<Leader>wq"] = { ":wq<Enter>", desc = "Save and Quit" },
        ["<C-a>"] = { "gg<S-v>G", desc = "Select All" },
        ["<C-u>"] = { "<C-u>zz", desc = "Up by half" },
        ["<C-d>"] = { "<C-d>zz", desc = "Down by half" },
        ["Y"] = { "yg$" }, -- Same thing as yel
        ["el"] = { "$" }, -- Go end of line
        ["yel"] = { "y$" }, -- Yank to end of line
        ["vel"] = { "v$" }, -- Select to end of line
        ["del"] = { "d$" }, -- Del to end of line
        ["<leader>d"] = { "dt" },
        ["J"] = { "mzJ`z" },
        ["n"] = { "nzzzv", desc = "hehe" },
      },
    },
  },
}
