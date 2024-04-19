return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
  },
  keys = function()
    local keys = {
      {
        "<leader>ha",
        function()
          require("harpoon"):list():append()
        end,
        desc = "Harpoon File",
      },
      {
        "<leader>hf",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon Quick Menu",
      },

      {
        "<leader>hn",
        function()
          require("harpoon"):list():next()
        end,
        desc = "Harpoon Next File",
      },
      {
        "<leader>hp",
        function()
          require("harpoon"):list():prev()
        end,
        desc = "Harpoon Prev File",
      },
    }

    for i = 1, 5 do
      table.insert(keys, {
        "<leader>" .. i,
        function()
          require("harpoon"):list():select(i)
        end,
        desc = "Harpoon to File " .. i,
      })
    end
    return keys
  end,
}
