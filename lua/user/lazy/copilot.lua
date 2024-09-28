return {
    {
        "Exafunction/codeium.vim",
        config = function()
            vim.g.codeium_enabled = true
            vim.keymap.set("i", "<Tab>", function() return vim.fn['codeium#Accept']() end, { expr = true }, {desc = "Accept codeium suggestion"})
            vim.keymap.set("i", "<C-w>", function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true }, {desc = "Cycle next codeium suggestions"})
            vim.keymap.set("i", "<C-b>", function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true }, {desc = "Cycle previous codeium suggestions"})
            vim.keymap.set("i", "<C-x>", function() return vim.fn['codeium#Clear']() end, { expr = true }, {desc = "Clear codeium suggestions"})
        end,
    },

    -- {
    --     "zbirenbaum/copilot.lua",
    --     event = "InsertEnter",
    --     config = function()
    --         require("copilot").setup({
    --             suggestion = { enabled = true },
    --             panel = { enabled = true },
    --         })
    --     end,
    -- },

    -- {
    --     "codota/tabnine-nvim",
    --     build = "./dl_binaries.sh",
    --     config = function()
    --         require('tabnine').setup({
    --             disable_auto_comment = true,
    --             accept_keymap = "<Tab>",
    --             dismiss_keymap = "<C-c>",
    --             debounce_ms = 800,
    --             suggestion_color = { gui = "#808080", cterm = 244 },
    --             exclude_filetypes = { "TelescopePrompt" },
    --             log_file_path = nil,
    --         })
    --         vim.cmd("TabnineDisable")
    --     end,
    -- },
}
