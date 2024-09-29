return {
    "nvim-treesitter/nvim-treesitter",

    dependencies = {
        "nvim-treesitter/playground",
    },

    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            playground = {
                enable = true,
                updatetime = 25,
                persist_queries = false,
            },
            ensure_installed = {
                "c",
                "css",
                "vimdoc",
                "javascript",
                "typescript",
                "lua",
                "jsdoc",
                "bash",
                "go",
                "html",
                "python",
                "sql",
                "markdown",
            },

            sync_install = false,

            auto_install = true,

            indent = {
                enable = true
            },

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })

        local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        treesitter_parser_config.templ = {
            install_info = {
                url = "https://github.com/vrischmann/tree-sitter-templ.git",
                files = {"src/parser.c", "src/scanner.c"},
                branch = "master",
            },
        }

        vim.treesitter.language.register("templ", "templ")

        vim.keymap.set("n", "<leader>t", "<cmd>TSHighlightCapturesUnderCursor<CR>", { desc = "Find type under cursor" })
    end
}
