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
                    -- settings from LazyVim
                    settings = {
                        gopls = {
                            gofumpt = true,
                            codelenses = {
                                gc_details = false,
                                generate = true,
                                regenerate_cgo = true,
                                run_govulncheck = true,
                                test = true,
                                tidy = true,
                                upgrade_dependency = true,
                                vendor = true,
                            },
                            hints = {
                                assignVariableTypes = true,
                                compositeLiteralFields = true,
                                compositeLiteralTypes = true,
                                constantValues = true,
                                functionTypeParameters = true,
                                parameterNames = true,
                                rangeVariableTypes = true,
                            },
                            analyses = {
                                -- fieldalignment = true,
                                nilness = true,
                                unusedparams = true,
                                unusedwrite = true,
                                useany = true,
                            },
                            usePlaceholders = true,
                            completeUnimported = true,
                            staticcheck = true,
                            directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
                            semanticTokens = true, -- resonposible for import highlights, etc.
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
