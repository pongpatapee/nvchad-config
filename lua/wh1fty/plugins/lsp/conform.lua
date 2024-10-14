return {
    "stevearc/conform.nvim",
    cmd = { "ConformInfo" },
    opts = {
        notify_on_error = false,
        -- format_on_save = function(bufnr)
        --     -- Disable "format_on_save lsp_fallback" for languages that don't
        --     -- have a well standardized coding style. You can add additional
        --     -- languages here or re-enable it for the disabled ones.
        --     local disable_filetypes = { c = true, cpp = true }
        --     local lsp_format_opt
        --     if disable_filetypes[vim.bo[bufnr].filetype] then
        --         lsp_format_opt = "never"
        --     else
        --         lsp_format_opt = "fallback"
        --     end
        --     return {
        --         timeout_ms = 500,
        --         lsp_format = lsp_format_opt,
        --     }
        -- end,

        formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            -- python = { "isort", "black" },
            -- You can customize some of the format options for the filetype (:help conform.format)
            -- Conform will run the first available formatter
            -- javascript = { "prettierd", "prettier", stop_after_first = true },
        },
    },
    keys = {
        {
            "<leader>cf",
            function()
                require("conform").format({ async = true, lsp_format = "fallback" })
            end,
            mode = "n",
            desc = "Code Format buffer",
        },
        {
            "<leader>ctf",
            function()
                vim.g.auto_format_on_save = not vim.g.auto_format_on_save
                print("Auto format:", vim.g.auto_format_on_save)
            end,
            mode = "n",
            desc = "Code Toggle Auto Format",
        },
    },

    config = function(_, opts)
        require("conform").setup(opts)
        -- Setup auto save myself so I can toggle it on and off

        -- global var for toggling auto format
        vim.g.auto_format_on_save = true

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function(args)
                -- global var for toggling auto format
                if not vim.g.auto_format_on_save then
                    return
                end

                require("conform").format({ bufnr = args.buf, lsp_format = "fallback", quiet = true })
            end,
        })
    end,
}
