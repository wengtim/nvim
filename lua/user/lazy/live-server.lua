return{
    "barrett-ruth/live-server.nvim",

    config = function() require("live-server").setup({
        cmd = {
            "LiveStartServer",
            "LiveStopServer",
        }
    })
    end
}
