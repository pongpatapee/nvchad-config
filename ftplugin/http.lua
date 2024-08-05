vim.keymap.set("n", "<C-p>", ":lua require('kulala').jump_prev()<CR>", { noremap = true })
vim.keymap.set("n", "<C-n>", ":lua require('kulala').jump_next()<CR>", { noremap = true })
vim.keymap.set(
  "n",
  "<leader>rr",
  ":lua require('kulala').run()<CR>",
  { noremap = true, silent = true, desc = "Kulala Rest Run" }
)
vim.keymap.set(
  "n",
  "<leader>rq",
  ":lua require('kulala').close()<CR>",
  { noremap = true, silent = true, desc = "Kulala Rest Quit" }
)
vim.keymap.set(
  "n",
  "<leader>ry",
  ":lua require('kulala').copy()<CR>",
  { noremap = true, silent = true, desc = "Kulala Rest Copy" }
)
vim.keymap.set(
  "n",
  "<leader>rt",
  ":lua require('kulala').toggle_view()<CR>",
  { noremap = true, silent = true, desc = "Kulala Rest Toggle View" }
)

-- Comment.nvim for .http filetype
local ft = require("Comment.ft")
ft.set("http", "#%s")
