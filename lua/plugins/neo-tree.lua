return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        -- commands = {
        --   delete = function(state)
        --     local path = state.tree:get_node().path
        --     vim.fn.system("trash " .. vim.fn.fnameescape(path))
        --     require("neo-tree.sources.manager").refresh(state.name)
        --   end,
        -- },
        window = {
          mappings = {
            ["D"] = function(state)
              local node = state.tree:get_node()
              local path = node:get_id()
              vim.fn.system("trash " .. vim.fn.fnameescape(path))
            end,
          },
        },

        filtered_items = {
          visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
          hide_dotfiles = true,
          hide_gitignored = true,
        },
      },
      source_selector = {
        winbar = true,
        content_layout = "center",
        sources = {
          { source = "filesystem", display_name = " 󰉓 Files " },
          { source = "buffers", display_name = " 󰈙 Bufs " },
          { source = "git_status", display_name = " 󰊢 Git " },
          -- { source = "document_symbols", display_name = " Symbols " },
          { source = "diagnostics", display_name = " 󰒡 Diagnostic " },
        },
      },
      window = {
        width = 33,
      },
    },
  },
}
