return{
    "barrett-ruth/live-server.nvim",

    config = function() require("live-server").setup({
        cmd = {
            "LiveStartServer",
            "LiveStopServer",
        }
    })
        vim.keymap.set("n", "<C-s>s", ":LiveServerStart<enter>")
        vim.keymap.set("n", "<C-s>S", ":LiveServerStop<enter>")
    end
}
