return {
  "ThePrimeagen/harpoon",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = true,
  keys = {
    { "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Add file to harpoon" },
    { "<leader>hf", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
    { "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
    { "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
    -- Navigate to files via number
    { "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Go to harpoon mark 1" },
    { "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Go to harpoon mark 2" },
    { "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Go to harpoon mark 3" },
    { "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Go to harpoon mark 4" },
    { "<leader>h5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = "Go to harpoon mark 5" },
    { "<leader>h6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", desc = "Go to harpoon mark 6" },
    { "<leader>h7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", desc = "Go to harpoon mark 7" },
    { "<leader>h8", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", desc = "Go to harpoon mark 8" },
    { "<leader>h9", "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", desc = "Go to harpoon mark 9" },
    { "<leader>h0", "<cmd>lua require('harpoon.ui').nav_file(10)<cr>", desc = "Go to harpoon mark 10" },
  },
}
