return {

    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
            columns = {
                "icon",
                -- "permissions",
                -- "size",
                -- "mtime",
            },
            keymaps = {
                ["<C-h>"] = false,
                ["<C-l>"] = false,
                ["<C-k>"] = false,
                ["<C-j>"] = false,
                ["<M-h>"] = "actions.select_split",
            },

            delete_to_trash = true,
            view_options = {
                show_hidden = true,
            },
        })

        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end,
}
