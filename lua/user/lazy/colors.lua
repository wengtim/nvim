 return {
    {
        "navarasu/onedark.nvim",
        config = function() require("onedark").setup({
            transparent = true,
            styles = 'cool',

            highlights = {
                ["@namespace"] = {fg = "#a15f43"},
                ["@string"] = {fg = "#79a376"},
                ["@operator"] = {fg = "#b5727d"},
                ["@parameter"] = {fg = "#cc5a43"},
                ["@variable"] = {fg = "#918cbd"},
                ["@module"] = {fg = "#c4b23d"},
                ["@punctuation"] = {fg = "#1c2926"},
                ["@function"] = {fg = "#2968ba"},
                ["@function.method"] = {fg = "#5d93b3"},
                ["@function.builtin"] = {fg = "#5d93b3"},
                ["@function.macro"] = {fg = "#5d93b3"},
                ["@keyword"] = {fg = "#6b5cb8"},
                ["@keyword.import"] = {fg = "#6b5cb8"},
                ["@keyword.function"] = {fg = "#7a6bc9"},
                ["@keyword.conditional"] = {fg = "#6b5cb8"},
                ["@error"] = {fg = "#bd2628"},
            }
        })
            require("onedark").load()
        end,
    },
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require ('nordic').setup({
                transparent_bg = true,
            })
        end
    },

    {
        "olimorris/onedarkpro.nvim",
        config = function()
            require("onedarkpro").setup({
                disable_background = true,
                options = {
                    transparency = true,
                    terminal_colors = true,
                },
            })
        end,
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",

        config = function() require('rose-pine').setup({
            disable_background = true,
            styles = {
                transparency = true,
            },
            -- highlight_groups = {
            --     Namespace = { fg = '#a15f43' },
            --     String = { fg = '#79a376' },
            --     Operator = { fg = '#b5727d' },
            --     Module = { fg = '#c4b23d' },
            --     Variable = {fg = "#918cbd"},
            -- },
        })
        end,
    },


    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function() require("gruvbox").setup({
            terminal_colors = true,
            transparent_mode = true,
            contrast = "hard",
        })
        end,
    },

}
