-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-f>", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Search cheese by file name" })
vim.keymap.set("n", "<C-j>", "<cmd>ObsidianSearch<CR>", { desc = "Search cheese by content" })
vim.keymap.set("n", "<C-g>", "<cmd>ObsidianToday<CR>", { desc = "Cheese create a new daily note" })
-- 进入 cheese 的 todo 页面
vim.keymap.set("n", "<leader>td", "<cmd>TodoTelescope cwd=~/Sync/home/cheese/<CR>", { desc = "Enter cheese todo" })

vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { desc = "Run current code" })
