return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",

        dependencies = { "rafamadriz/friendly-snippets" },

        config = function()
            require("lspconfig").jdtls.setup({})
            local ls = require("luasnip")
            ls.filetype_extend("javascript", { "jsdoc" })

            vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true}, {desc = "Expand snippet"})
            vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump(1) end, {silent = true}, {desc = "Jump to next snippet"})
            vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true}, {desc = "Jump to previous snippet"})

            vim.keymap.set({"i", "s"}, "<C-E>", function()
                if ls.choice_active() then
                    ls.change_choice(1)
                end
            end, {silent = true})
        end,
    }
}
