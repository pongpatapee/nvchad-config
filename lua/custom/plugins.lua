local plugins = {

  -- for seemless navigation with tmux panes
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- Markdown previewer
  {
    "iamcco/markdown-preview.nvim",
    event = "BufRead",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",
        -- datasci/ml
        "python",

       -- low level
        "c",
        "zig"
      },
    },
  }
}
return plugins
