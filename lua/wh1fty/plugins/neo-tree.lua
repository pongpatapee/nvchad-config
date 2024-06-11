return {

  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    filesystem = {
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
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
      end,
      desc = "Explorer NeoTree",
    },
  },

}
