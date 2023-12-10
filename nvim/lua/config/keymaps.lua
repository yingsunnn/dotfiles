-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "<leader>ws", "<cmd>w<cr>", { noremap = true, desc = "Save" })

-- Resize window
vim.keymap.set("n", "<C-S-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-S-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

vim.keymap.del("n", "<C-Up>", nil)
vim.keymap.del("n", "<C-Down>", nil)
vim.keymap.del("n", "<C-Left>", nil)
vim.keymap.del("n", "<C-Right>", nil)
