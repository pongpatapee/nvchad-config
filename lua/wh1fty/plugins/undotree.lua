return {
    "mbbill/undotree",

    opts = {},
    keys = {
        {
            "<leader>ut",
            vim.cmd.UndotreeToggle,
            mode = "n",
            desc = "Toggle Undotree",
        },
    },
    config = function()
        vim.g.undotree_WindowLayout = 3
        vim.g.undotree_SplitWidth = 50
    end,
}
