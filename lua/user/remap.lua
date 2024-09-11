vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "el", "$")
vim.keymap.set("n", "yel", "y$")
vim.keymap.set("n", "del", "d$")
vim.keymap.set("n", "<leader>d", "dt")
vim.keymap.set("n", "<leader>y", "yt")
vim.keymap.set("n", "<leader>sa", ":saveas ")

vim.keymap.set({ "n", "v" }, "<leader>dv", [["_d]]) -- delete to void
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>w", ":w<enter>")
vim.keymap.set("n", "<leader>q", ":q<enter>")
vim.keymap.set("n", "<leader>Q", ":q!<enter>")
vim.keymap.set("n", "<C-s>s", ":LiveServerStart<enter>")
vim.keymap.set("n", "<C-s>S", ":LiveServerStop<enter>")
