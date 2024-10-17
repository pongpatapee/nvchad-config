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
                -- lsp.lua configures servers to be part of ensure_installed,
                -- no need to specify twice although it doesn't matter if it is

                -- "pyright", -- python lsp
                -- "ruff", -- linter + lsp
                "black", -- formatter
                "isort", -- import organizer
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
