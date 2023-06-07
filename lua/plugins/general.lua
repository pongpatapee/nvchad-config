return {

  -- tmux navigation with neovim
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "numToStr/Comment.nvim",
    keys = {
      { "gcc", mode = "n" },
      { "gc", mode = "v" },
      { "gbc", mode = "n" },
      { "gb", mode = "v" },
    },
  },
}
