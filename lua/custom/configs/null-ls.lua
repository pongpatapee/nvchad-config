-- custom/configs/null-ls.lua

local present, null_ls = pcall(require, "null-ls")
if not present then
  return
end

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  -- webdev stuff
  formatting.deno_fmt,
  formatting.prettier,

  -- lua
  formatting.stylua,

  --python
  formatting.black,


  lint.shellcheck,
}

null_ls.setup {
   debug = true,
   sources = sources,
}

-- formatting on save
-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
-- require("null-ls").setup({
--     -- you can reuse a shared lspconfig on_attach callback here
--     on_attach = function(client, bufnr)
--         if client.supports_method("textDocument/formatting") then
--             vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
--             vim.api.nvim_create_autocmd("BufWritePre", {
--                 group = augroup,
--                 buffer = bufnr,
--                 callback = function()
--                     -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
--                     -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
--                     vim.lsp.buf.formatting_sync()
--                 end,
--             })
--         end
--     end,
-- })
--
