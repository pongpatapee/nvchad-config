return {
    {
        "neovim/nvim-lspconfig",
        opts_extended = {
            "ensure_installed",
        },
        opts = {
            servers = {
                -- go lsp
                gopls = {
                    settings = {
                        gopls = {
                            gofumpt = true,

                            hints = {
                                assignVariableTypes = true,
                                compositeLiteralFields = true,
                                compositeLiteralTypes = true,
                                constantValues = true,
                                functionTypeParameters = true,
                                parameterNames = true,
                                rangeVariableTypes = true,
                            },
                        },
                    },
                },
            },

            -- Mason opts configured with lspconfig in lsp.lua
            ensure_installed = {
                "goimports", -- add or remove imports
                "gofumpt", -- go formatter (stricter than gofmt)
                "gomodifytags",
                -- "impl", -- generates method stubs for implementing an interface.
                -- "delve", --debugger
            },
        },
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                go = { "goimports", "gofumpt" },
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "go", "gomod", "gowork", "gosum" },
        },
    },
}
