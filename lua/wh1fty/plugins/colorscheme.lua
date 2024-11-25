return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },
        },
    },
    {
        "navarasu/onedark.nvim",
        opts = {
            style = "darker",
        },
    },
    {
        "folke/tokyonight.nvim",
        -- lazy = false,
        -- priority = 1000,
        opts = {},
    },

    { "projekt0n/github-nvim-theme", name = "github-theme" },
    { "bluz71/vim-moonfly-colors", name = "moonfly" },
    "rebelot/kanagawa.nvim",
    "EdenEast/nightfox.nvim",
    {
        "Mofiqul/vscode.nvim",
        opts = {
            transparent = false,
            -- Override colors (see ./lua/vscode/colors.lua)
            color_overrides = {
                vscBack = "#000001",
                -- vscLineNumber = "#FFFFFF",
            },
        },
    },

    "ellisonleao/gruvbox.nvim",
    "sainnhe/gruvbox-material",
    "tiagovla/tokyodark.nvim",
    { "rose-pine/neovim", name = "rose-pine" },
}
