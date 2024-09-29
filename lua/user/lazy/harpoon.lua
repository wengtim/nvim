return {
    'ThePrimeagen/harpoon',
    config = function()
        require("harpoon").setup({})
        vim.keymap.set("n", "<leader>a", function() require('harpoon.mark').add_file() end,
            { desc = "Add file to harpoon" })
        vim.keymap.set("n", "<leader>oh", function() require('harpoon.ui').toggle_quick_menu() end,
            { desc = "Open harpoon menu" })

        vim.keymap.set("n", "<C-n>", function() require('harpoon.ui').nav_next() end, { desc = "Cycle next file" })
        vim.keymap.set("n", "<C-p>", function() require('harpoon.ui').nav_prev() end, { desc = "Cycle previous file" })
    end,
}
