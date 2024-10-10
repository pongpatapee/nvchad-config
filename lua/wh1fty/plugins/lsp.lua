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

        lspconfig.lua_ls.setup({})

    end,
}
