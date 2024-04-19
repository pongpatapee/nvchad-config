return {
  {
    -- "p00f/nvim-ts-rainbow", -- rainbow 1 (no longer maintained)
    "HiPhish/nvim-ts-rainbow2", -- (rainbow 2)
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "c_sharp",
      },

      context_commentstring = {
        config = {
          javascript = {
            __default = "// %s",
            jsx_element = "{/* %s */}",
            jsx_fragment = "{/* %s */}",
            jsx_attribute = "// %s",
            comment = "// %s",
          },
          typescript = { __default = "// %s", __multiline = "/* %s */" },
        },
      },

      rainbow = {
        enable = false,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        -- extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        -- max_file_lines = nil, -- Do not enable for files with more than n lines, int

        query = { "rainbow-parens" },

        hlgroups = {
          "TSRainbowRed",
          "TSRainbowYellow",
          "TSRainbowBlue",
          "TSRainbowOrange",
          "TSRainbowGreen",
          "TSRainbowViolet",
          "TSRainbowCyan",
        },

        -- -- VScode highlight group
        -- hlgroups = {
        --   "TSRainbowYellow",
        --   "TSRainbowViolet",
        --   "TSRainbowBlue",
        -- },
      },
    },
  },
}
