---@type ChadrcConfig 
local M = {}
M.ui = {
  nvdash = {load_on_startup = true},
  theme = 'vscode_dark',
  transparency = false,
  statusline = {
    theme = "minimal"
  }
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
