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
      },

      rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        -- max_file_lines = nil, -- Do not enable for files with more than n lines, int

        -- colors = {
        --   -- "#68a0b0",
        --   -- "#946EaD",
        --   -- "#c7aA6D",
        --   -- "Gold",
        --   -- "Orchid",
        --   -- "DodgerBlue",
        --   "Cornsilk",
        --   "Salmon",
        --   "LawnGreen",
        -- },
      },
    },
  },
}
