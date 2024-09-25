return{
    "barrett-ruth/live-server.nvim",

    config = function() require("live-server").setup({
        cmd = {
            "LiveStartServer",
            "LiveStopServer",
        }
    })
        vim.keymap.set("n", "<C-s>s", ":LiveServerStart<enter>", {desc = "Start live server"})
        vim.keymap.set("n", "<C-s>S", ":LiveServerStop<enter>", {desc = "Stop live server"})
    end
}
