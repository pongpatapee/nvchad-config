return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config

        opts = {
            indent = {
                char = "▎",
                tab_char = "▎", -- helps with go files in particular
            },
            exclude = {
                filetypes = {
                    "dashboard",
                    "alpha",
                },
            },
        },
    },
}
