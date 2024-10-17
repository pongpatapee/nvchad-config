return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                -- copy lazyvim for now
                -- TODO: setup ts_ls instead
                ts_ls = {
                    enabled = false,
                },
                vtsls = {
                    -- explicitly add default filetypes, so that we can extend
                    -- them in related extras
                    filetypes = {
                        "javascript",
                        "javascriptreact",
                        "javascript.jsx",
                        "typescript",
                        "typescriptreact",
                        "typescript.tsx",
                    },
                    settings = {
                        complete_function_calls = true,
                        vtsls = {
                            enableMoveToFileCodeAction = true,
                            autoUseWorkspaceTsdk = true,
                            experimental = {
                                completion = {
                                    enableServerSideFuzzyMatch = true,
                                },
                            },
                        },
                        typescript = {
                            updateImportsOnFileMove = { enabled = "always" },
                            suggest = {
                                completeFunctionCalls = true,
                            },
                            inlayHints = {
                                enumMemberValues = { enabled = true },
                                functionLikeReturnTypes = { enabled = true },
                                parameterNames = { enabled = "literals" },
                                parameterTypes = { enabled = true },
                                propertyDeclarationTypes = { enabled = true },
                                variableTypes = { enabled = false },
                            },
                        },
                    },
                },
            },

            -- Mason opts configured with lspconfig in lsp.lua
            ensure_installed = {
                "prettier", -- formatter
            },
        },
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                -- pretty verbose but ey
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                html = { "prettier" },
                css = { "prettier" },
                scss = { "prettier" },
                vue = { "prettier" },
                yaml = { "prettier" },
                graphql = { "prettier" },
                handlebars = { "prettier" },
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "javascript",
                "jsdoc",
                "tsx",
                "typescript",
            },
        },
    },
}
