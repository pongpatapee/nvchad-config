return {
    "xiyaowong/transparent.nvim",
    opts = {
        exclude_groups = { "CursorLine" },
    },
    keys = {
        {

            "<leader>uT",
            "<cmd>TransparentToggle<cr>",
            desc = "Ui Toggle Transparency",
        },
    },

    init = function()
        -- NOTE: enable/disable is also done through toggle function

        -- set initial state as false otherwise have to trigger toggle twice
        require("transparent").toggle(false)
    end,
}
