vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex, { desc = "Open File Explorer" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up" })
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })
vim.keymap.set("n", "G", "Gzz", { desc = "End of page and center" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Keep cursor centered during search" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Keep cursor centered during search" })

vim.keymap.set("n", "el", "$", { desc = "End of line" })
vim.keymap.set("n", "yel", "y$", { desc = "Yank End of line" })
vim.keymap.set("n", "vel", "v$", { desc = "Select End of line" })
vim.keymap.set("n", "del", "d$", { desc = "Delete End of line" })

vim.keymap.set("n", "<leader>d", "dt", { desc = "Delete till" })
vim.keymap.set("n", "<leader>y", "yt", { desc = "Yank till" })
vim.keymap.set("n", "<leader>sa", ":saveas ", { desc = "Save as" })

vim.keymap.set("n", "<leader>w", vim.cmd.w, { desc = "Save" })
vim.keymap.set("n", "<leader>q", vim.cmd.q, { desc = "Quit" })
vim.keymap.set("n", "<leader>Q", function() vim.cmd("q!") end, { desc = "Quit without saving" })
vim.keymap.set("n", "<leader>c", vim.cmd.close, { desc = "Close Buffer" })

vim.keymap.set("n", "Q", "<nop>", { desc = "No operation" })
vim.keymap.set("n", "q", "<nop>", { desc = "No operation" })
vim.keymap.set("n", "==",  vim.lsp.buf.format, { desc = "Format code" })
vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Tmux sessionizer" })
