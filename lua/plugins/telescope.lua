return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-media-files.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("media_files")
      end,
      opts = {
        extensions = {
          media_files = {
            -- filetypes whitelist
            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
            filetypes = { "png", "webp", "jpg", "jpeg" },
            -- find command (defaults to `fd`)
            find_cmd = "rg",
          },
        },
      },
    },
  },
}
