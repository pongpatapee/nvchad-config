-- This file is loaded after lazy.nvim plugin manager setup

local Utils = require("wh1fty.utils")

-- Set colorscheme
-- local colorscheme = Utils.get_random_colorscheme()
local colorscheme = "onedark"
vim.cmd.colorscheme(colorscheme)

local opt = vim.opt

-- opt.clipboard = "unnamedplus" -- Sync with system clipboard

opt.number = true
opt.relativenumber = true

opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current

opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 4 -- Number of spaces tabs count for (applies to pressing tab in insert)
opt.shiftwidth = 4 -- Size of an indent (applies to =, >, <)
opt.shiftround = true -- Round indent
opt.smartindent = true -- Insert indents automatically

opt.scrolloff = 4 -- Lines left at top or bottom when scrolling
opt.sidescrolloff = 8 -- Columns of context
opt.wrap = false -- Disable line wrap
opt.linebreak = true -- Wrap lines at end of words rather than at last char

opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.mouse = "a" -- Enable mouse mode

opt.inccommand = "split" -- preview incremental substitute (split shows additional preview in new window)
opt.ignorecase = true -- Ignore case
opt.smartcase = true -- Don't ignore case with capitals

opt.spelllang = { "en" }

opt.undofile = true
-- opt.undolevels = 10000

opt.list = true -- Show some invisible characters (tabs...

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
opt.timeoutlen = 300

opt.showmode = false -- Dont show mode since we have a statusline

opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
