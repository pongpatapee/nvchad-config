-- TODO: add debugger (nvim-dap) if needed
return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                pyright = {},
                ruff = {},
            },

            -- Mason opts configured with lspconfig in lsp.lua
            ensure_installed = {
                "pyright",
                "ruff",
                "black",
                "isort",
            },
        },
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                python = { "isort", "black" },
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "python" },
        },
    },
}
