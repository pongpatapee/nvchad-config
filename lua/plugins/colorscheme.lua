return {
  -- add catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
    },
  },

  -- onedark theme
  {
    "navarasu/onedark.nvim",
    lazy = false,
    opts = {
      --main options
      style = "warmer", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
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

  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
  },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "darkplus",
    },
  },
}
