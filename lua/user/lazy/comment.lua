return {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup({
        opleader = {
            line = '<leader>/',
        },
    }) end,
    sticky = true,
}
