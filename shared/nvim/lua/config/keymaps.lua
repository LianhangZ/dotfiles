-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<leader>bd") -- Delete Buffer
vim.keymap.del("n", "<leader>bo") -- Delete Other Buffer
vim.keymap.del("n", "<leader>-")  -- Split Window Below
vim.keymap.del("n", "<leader>|")  -- Split Window Right

vim.keymap.set("n", "<C-w>", "<cmd>resize +1<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-s>", "<cmd>resize -1<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-d>", "<cmd>vertical resize -1<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-a>", "<cmd>vertical resize +1<CR>", { desc = "Increase window width" })
