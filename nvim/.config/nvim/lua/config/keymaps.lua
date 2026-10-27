-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Split windows with Shift + backslash (|) and Shift + minus (_).
vim.keymap.set("n", "|", "<C-W>v", { desc = "Split Window Right", remap = true })
vim.keymap.set("n", "_", "<C-W>s", { desc = "Split Window Below", remap = true })
