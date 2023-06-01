-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- better escape
map("i", "kj", "<ESC>", opts)

-- Navigate with tmux panes
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", opts)
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", opts)
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", opts)
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", opts)
