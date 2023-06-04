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

-- editor like comment binds
vim.keymap.set("n", "<C-_>", function()
  require("Comment.api").toggle.linewise.current()
end, opts)
vim.keymap.set("v", "<C-_>", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- split screen
map("n", "<leader>\\", "<cmd> vsplit<CR>", { desc = "Split window right", noremap = true, silent = true }) -- alternate bind to <leader> |
map("n", "<leader>_", "<cmd> split<CR>", { desc = "Split window below", noremap = true, silent = true }) -- alternate bind to <leader> -

-- center page when C-d/C-u
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<C-d>", "<C-d>zz", opts)

-- keeps cursor where it is after yank (by default it goes back up to the top)
map("v", "y", "ygv<ESC>", opts)

-- allow for Ctrl + Backspace for deleting words
-- not working right now for some reason
-- map("i", "<C-BS>", "<ESC>cvb", {})
map("i", "<C-BS>", "<C-w>", opts)
