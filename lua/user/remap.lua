vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "el", "$")
vim.keymap.set("n", "yel", "y$")
vim.keymap.set("n", "vel", "v$")
vim.keymap.set("n", "del", "d$")

vim.keymap.set("n", "<leader>d", "dt")
vim.keymap.set("n", "<leader>y", "yt")
vim.keymap.set("n", "<leader>sa", ":saveas ")

vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>Q", function () vim.cmd("q!") end)
vim.keymap.set("n", "<leader>c", vim.cmd.close)

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

