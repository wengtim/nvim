-- cc to commit

return {
   "tpope/vim-fugitive",
   config = function()
      -- Open Git Status
      vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

      local user_fugitive = vim.api.nvim_create_augroup("user_fugitive", {})
      local autocmd = vim.api.nvim_create_autocmd
      autocmd("BufWinEnter", {
         group = user_fugitive,
         pattern = "*",
         callback = function()
            if vim.bo.ft ~= "fugitive" then
               return
            end

            local bufnr = vim.api.nvim_get_current_buf()
            local opts = { buffer = bufnr, remap = false }
            vim.keymap.set("n", "<leader>gp", function()
               vim.cmd.Git('push')
            end, opts)

            -- rebase always
            vim.keymap.set("n", "<leader>gP", function()
               vim.cmd.Git({ 'pull', '--rebase' })
            end, opts)

            vim.keymap.set("n", "<leader>gt", ":Git push -u origin ", opts);
         end,
      })


      vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
      vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
   end
}
