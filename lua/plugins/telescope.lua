return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-media-files.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("media_files")
      end,
    },

    require("telescope").setup({
      extensions = {
        media_files = {
          -- filetypes whitelist
          -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
          filetypes = { "png", "webp", "jpg", "jpeg" },
          -- find command (defaults to `fd`)
          find_cmd = "fdfind",
        },
      },
    }),

    keys = {
      {
        "<leader>fi", -- Find images/media files
        function()
          require("telescope").extensions.media_files.media_files()
        end,
        desc = "Find Images/Media Files",
      },
    },
  },
}
