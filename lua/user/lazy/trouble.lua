return
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
        keys = {
            { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Look for diagnostics" },
            { "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "Look for location list" },
            { "<leader>xq", "<cmd>Trouble quickfix toggle<cr>", desc = "Look for quickfix list" },
        }
    }
