return {
    -- Allow neovim to talk to language servers
    "neovim/nvim-lspconfig",
    dependencies = {
        -- Install language servers
        "williamboman/mason.nvim",
        -- Assist with hooking lsp installed through mason with lsp-config
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls" },
        })

        local lspconfig = require("lspconfig")

        lspconfig.lua_ls.setup({
            diagnostics = {
                globals = { "vim" },
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

        -- local capabilities = vim.lsp.protocol.make_client_capabilities()
        -- capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

        -- require("mason-lspconfig").setup({
        --     handlers = {
        --         function(server_name)
        --             require("lspconfig")[server_name].setup({
        --                 capabilities = capabilities,
        --             })
        --         end,
        --     },
        -- })
    end,
}
