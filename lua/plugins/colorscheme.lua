return {
  -- add catppuccin
  { "catppuccin/nvim", name = "catppuccin", flavor = "mocha" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
