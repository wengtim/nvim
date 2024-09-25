return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {}, {desc = "Find files"})
        vim.keymap.set('n', '<leader>fg', builtin.git_files, {}, {desc = "Find git files"})
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, {}, {desc = "Find keymaps"})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}, {desc = "Find help"})
        vim.keymap.set('n', '<leader>fw', builtin.live_grep, {desc = "Find word"})
    end
}

