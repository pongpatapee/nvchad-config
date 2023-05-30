---@type ChadrcConfig 
local M = {}
M.ui = {
  nvdash = {load_on_startup = true},
  theme = 'catppuccin',
  transparency = false,
  statusline = {
    theme = "minimal"
  }
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
