return
    {
        "olimorris/onedarkpro.nvim",
        config = function()
            require("onedarkpro").setup({
                options = {
                    transparency = true,
                    terminal_colors = true,
                },
            })
        end,
    }
