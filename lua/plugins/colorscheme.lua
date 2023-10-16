return {
  -- add catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      -- transparent_background = true,
    },
  },

  -- onedark theme
  {
    "navarasu/onedark.nvim",
    lazy = false,
    opts = {
      --main options
      style = "dark", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = false, -- Show/hide background
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
    },
  },

  -- vscode darkplus theme
  {
    "lunarvim/darkplus.nvim",
    lazy = false,
  },

  -- ensure tokyonight colors are here
  {
    "folke/tokyonight.nvim",
    lazy = false,
  },

  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
  },

  {
    "rebelot/kanagawa.nvim",
    opts = {
      commentStyle = { italic = false },
      functionStyle = {},
      keywordStyle = { italic = false },
      statementStyle = { bold = true },
    },
    lazy = false,
  },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
