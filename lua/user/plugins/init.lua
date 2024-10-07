return {

   {
      "nvim-lua/plenary.nvim",
      name = "plenary"
   },

   {
      "eandrju/cellular-automaton.nvim"
   },

   {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true,
   },

   {
      "christoomey/vim-tmux-navigator",
      lazy = false,

      vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", {desc = "Tmux navigate left"}),
      vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", {desc = "Tmux navigate down"}),
      vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", {desc = "Tmux navigate up"}),
      vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", {desc = "Tmux navigate right"}),
   },
}

