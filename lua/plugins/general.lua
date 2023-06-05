return {

  -- tmux navigation with neovim
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- added commenting
  {
    "numToStr/Comment.nvim",
    keys = {
      { "gcc", mode = "n" },
      { "gc", mode = "v" },
      { "gbc", mode = "n" },
      { "gb", mode = "v" },
    },
  },

  --colorizer
  {
    "norcalli/nvim-colorizer.lua",

    config = function()
      -- require("colorizer").setup({
      --   filetypes = { "*" },
      --   user_default_options = {
      --     RGB = true, -- #RGB hex codes
      --     RRGGBB = true, -- #RRGGBB hex codes
      --     names = true, -- "Name" codes like Blue
      --     RRGGBBAA = false, -- #RRGGBBAA hex codes
      --     rgb_fn = true, -- CSS rgb() and rgba() functions
      --     hsl_fn = false, -- CSS hsl() and hsla() functions
      --     css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      --     css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      --     -- Available modes: foreground, background
      --     mode = "background", -- Set the display mode.
      --   },
      -- })
      require("colorizer").setup()
    end,
  },
}
