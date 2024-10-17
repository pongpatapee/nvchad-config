return {

    -- {
    --     "b0o/SchemaStore.nvim",
    --     lazy = true,
    --     version = false, -- last release is way too old
    -- },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                jsonls = {
                    settings = {
                        json = {
                            -- schemas = require("schemastore").json.schemas(),
                            -- format = { enable = true },
                            validate = { enable = true },
                        },
                    },
                },
            },
        },
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                json = { "prettier" },
                jsonc = { "prettier" },
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "json5", "json", "jsonc" },
        },
    },
}
