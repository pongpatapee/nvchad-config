-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  -- group = augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Disable autocomment in newline
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
  desc = "Disable autocomment in newline",
})

