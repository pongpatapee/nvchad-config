return {
    -- Allow neovim to talk to language servers
    "neovim/nvim-lspconfig",
    dependencies = {
        -- Install language servers
        "williamboman/mason.nvim",
        -- Assist with hooking lsp installed through mason with lsp-config
        "williamboman/mason-lspconfig.nvim",
        -- Extend ensure_installed to tools other than lsp servers
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },

    -- Extend opts that needs to be merged into the parent spec
    -- Since ensure_installed is a mason thing, we need to specify this for lspconfig
    opts_extend = { "ensure_installed" },

    opts = {
        servers = {
            lua_ls = {
                -- cmd = {...},
                -- filetypes = { ...},
                -- capabilities = {},
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Replace",
                        },
                        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
                        -- diagnostics = { disable = { 'missing-fields' } },
                    },
                },
                -- diagnostics = {
                --     globals = { "vim" },
                -- },
            },
        },
    },

    config = function(_, opts)
        local servers = opts.servers or {}

        local ensure_installed = vim.tbl_keys(servers or {})
        vim.list_extend(ensure_installed, { "stylua" })
        -- ensure_installed will be extended by language config in other files through mason opts
        vim.list_extend(ensure_installed, opts.ensure_installed or {})

        -- NOTE: Can debug plugins/opts with something like this
        -- print("Ensure installed:")
        -- print(vim.inspect(ensure_installed))
        -- print("Opts being passed in:")
        -- print(vim.inspect(opts))

        -- LSP servers and clients are able to communicate to each other what features they support.
        --  By default, Neovim doesn't support everything that is in the LSP specification.
        --  When you add nvim-cmp, luasnip, etc. Neovim now has *more* capabilities.
        --  So, we create new capabilities with nvim cmp, and then broadcast that to the servers.
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

        require("mason").setup()
        require("mason-tool-installer").setup({
            ensure_installed = ensure_installed,
        })
        require("mason-lspconfig").setup({
            -- ensure_installed = ensure_installed,
            handlers = {
                function(server_name)
                    local server = servers[server_name] or {}
                    -- This handles overriding only values explicitly passed
                    -- by the server configuration above. Useful when disabling
                    -- certain features of an LSP (for example, turning off formatting for ts_ls)
                    server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
                    require("lspconfig")[server_name].setup(server)
                end,
            },
        })

        -- Add lsp keybinds
        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(e)
                local builtin = require("telescope.builtin")
                -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = e.buf, desc = "Goto Definition" })
                -- vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = e.buf, desc = "References" })
                -- vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = e.buf, desc = "Goto Implementation" })
                vim.keymap.set("n", "gd", builtin.lsp_definitions, { buffer = e.buf, desc = "Goto Definition" })
                vim.keymap.set("n", "gr", builtin.lsp_references, { buffer = e.buf, desc = "References" })
                vim.keymap.set("n", "gi", builtin.lsp_implementations, { buffer = e.buf, desc = "Goto Implementation" })
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = e.buf, desc = "Goto Declaration" })
                vim.keymap.set(
                    "n",
                    "gT",
                    vim.lsp.buf.type_definition,
                    { buffer = e.buf, desc = "Goto Type Definition" }
                )
                vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = e.buf, desc = "Hover" })
                vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, { buffer = e.buf, desc = "Signature Help" })
                vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { buffer = e.buf, desc = "Code Rename" })
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = e.buf, desc = "Code Action" })
                -- vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { buffer = e.buf, desc = "Code Format" })
                vim.keymap.set(
                    "n",
                    "<leader>cd",
                    vim.diagnostic.open_float,
                    { buffer = e.buf, desc = "Code Diagnostics" }
                )
                vim.keymap.set("n", "[d", vim.diagnostic.goto_next, { buffer = e.buf, desc = "Next Diagnostics" })
                vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { buffer = e.buf, desc = "Prev Diagnostics" })
                vim.keymap.set(
                    "n",
                    "<leader>ss",
                    builtin.lsp_document_symbols,
                    { buffer = e.buf, desc = "Search Document Symbols" }
                )
                vim.keymap.set(
                    "n",
                    "<leader>sS",
                    builtin.lsp_workspace_symbols,
                    { buffer = e.buf, desc = "Search Workspace Symbols" }
                )
            end,
        })
    end,
}
