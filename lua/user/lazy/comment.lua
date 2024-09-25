return {
    vim.keymap.set("n", "<leader>/", function () vim.cmd("normal gcc") end, {desc = "Comment line current line"}),
    vim.keymap.set("v", "<leader>/", function () vim.cmd("normal gc") end, {desc = "Comment line"}),
}
