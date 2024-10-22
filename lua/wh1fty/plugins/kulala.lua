vim.filetype.add({
    extension = {
        ["http"] = "http",
    },
})

return {
    "mistweaverco/kulala.nvim",
    ft = "http",
    opts = {},
    keys = {
        { "<leader>r", "", desc = "+Rest" },
        { "<leader>rr", "<cmd>lua require('kulala').run()<cr>", desc = "Send the request" },
        { "<leader>rt", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Toggle headers/body" },
        { "<leader>ry", "<cmd>lua require('kulala').copy()<cr>", desc = "Copy request" },
        { "<leader>rp", "<cmd>lua require('kulala').jump_prev()<cr>", desc = "Jump to previous request" },
        { "<leader>rn", "<cmd>lua require('kulala').jump_next()<cr>", desc = "Jump to next request" },
        { "<leader>rq", "<cmd>lua require('kulala').close()<cr>", desc = "Close kulala" },
    },
}
