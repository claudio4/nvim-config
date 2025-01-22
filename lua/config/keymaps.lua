-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Telescope/find
map("n", "<leader>fp", "<cmd>FzfLua commands<CR>", { desc = "Find Prompt" })
map("n", "<leader>fk", "<cmd>FzfLua keymaps<CR>", { desc = "Find Keymap" })

-- ui
map("n", "<leader>ut", "<cmd>ToggleColorscheme<CR>", { desc = "Toggle between dark/light theme" })

-- text edit
map("i", "<C-BS>", "<C-w>", { noremap = true, desc = "delete whole word" })
map("i", "<C-v>", "<C-R>+", { noremap = true, desc = "paste" })
