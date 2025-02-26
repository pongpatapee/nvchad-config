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
                -- vscBack = "#000001",
                -- vscLineNumber = "#FFFFFF",
            },
        },
    },

    "ellisonleao/gruvbox.nvim",
    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            -- vim.g.gruvbox_material_enable_italic = true
            vim.g.gruvbox_material_background = "hard"
            vim.g.gruvbox_material_foreground = "original"
            vim.g.gruvbox_material_transparent_background = 0
        end,
    },

    "tiagovla/tokyodark.nvim",
    { "rose-pine/neovim", name = "rose-pine" },
}
