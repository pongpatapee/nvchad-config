return {

  -- tmux navigation with neovim
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- added commenting
  {
    "numToStr/Comment.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "JoosepAlviste/nvim-ts-context-commentstring",
      opts = {
        enable_autocmd = false,
      },
    },
    keys = {
      { "gcc", mode = "n" },
      { "gc", mode = "v" },
      { "gbc", mode = "n" },
      { "gb", mode = "v" },
    },
    opts = {
      ignore = "^$",
      -- pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(), -- This line breaks the config
    },
  },

  --colorizer
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      filetypes = { "*" },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = true, -- "Name" codes like Blue or blue
        RRGGBBAA = false, -- #RRGGBBAA hex codes
        AARRGGBB = false, -- 0xAARRGGBB hex codes
        rgb_fn = false, -- CSS rgb() and rgba() functions
        hsl_fn = false, -- CSS hsl() and hsla() functions
        css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "background", -- Set the display mode.
        -- Available methods are false / true / "normal" / "lsp" / "both"
        -- True is same as normal
        tailwind = false, -- Enable tailwind colors
        -- parsers can contain values used in |user_default_options|
        sass = { enable = false, parsers = { "css" } }, -- Enable sass colors
        virtualtext = "■",
        -- update color values even if buffer is not focused
        -- example use: cmp_menu, cmp_docs
        always_update = false,
      },
      -- all the sub-options of filetypes apply to buftypes
      buftypes = {},
    },
  },

  -- nvim surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },

  -- Transparent background
  -- {
  --   "xiyaowong/transparent.nvim",
  --   opts = {
  --     groups = { -- table: default groups
  --       "Normal",
  --       "NormalNC",
  --       "Comment",
  --       "Constant",
  --       "Special",
  --       "Identifier",
  --       "Statement",
  --       "PreProc",
  --       "Type",
  --       "Underlined",
  --       "Todo",
  --       "String",
  --       "Function",
  --       "Conditional",
  --       "Repeat",
  --       "Operator",
  --       "Structure",
  --       "LineNr",
  --       "NonText",
  --       "SignColumn",
  --       "CursorLineNr",
  --       "EndOfBuffer",
  --     },
  --     extra_groups = {}, -- table: additional groups that should be cleared
  --     exclude_groups = {}, -- table: groups you don't want to clear
  --   },
  -- },
}
