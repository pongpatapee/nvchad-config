return {
    -- Grug far (Find and replace)
    {
        "MagicDuck/grug-far.nvim",
        config = function()
            require("grug-far").setup({
                -- options, see Configuration section below
                -- there are no required options atm
                -- engine = 'ripgrep' is default, but 'astgrep' can be specified
            })

            vim.keymap.set({ "n", "v" }, "<leader>sr", "<cmd>GrugFar<cr>", { desc = "[S]earch and [R]eplace" })
        end,
    },

    -- {
    --     "nvim-pack/nvim-spectre",
    --     opts = {},
    --     keys = {
    --         {
    --             "<leader>sr",
    --             "<cmd>Spectre<cr>",
    --             desc = "[S]earch and [R]eplace",
    --         },
    --     },
    -- },
}
