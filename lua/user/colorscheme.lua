-- vim.cmd "colorscheme darkplus"

-- vim.cmd "colorscheme default"

local colorscheme = "darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme) -- .. in lua is string concat
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return 
end



