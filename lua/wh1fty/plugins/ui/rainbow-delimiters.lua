return {
    "HiPhish/rainbow-delimiters.nvim",
    -- enabled = false,
    config = function()
        -- RainbowDelimiterRed xxx guifg=#c586c0
        -- RainbowDelimiterOrange xxx guifg=#ce9178
        -- RainbowDelimiterYellow xxx guifg=#d7ba7d
        -- RainbowDelimiterGreen xxx guifg=#6a9955
        -- RainbowDelimiterCyan xxx guifg=#4ec9b0
        -- RainbowDelimiterBlue xxx guifg=#18a2fe
        -- RainbowDelimiterViolet xxx guifg=#646695

        local rainbow = require("rainbow-delimiters")

        local opts = {
            highlight = {
                -- Can be any highlight group from neovim
                -- can define own highlight groups and configure per theme
                -- or override these rainbow hlgroups

                -- default highlights
                -- "RainbowDelimiterRed",
                -- "RainbowDelimiterYellow",
                -- "RainbowDelimiterBlue",
                -- "RainbowDelimiterOrange",
                -- "RainbowDelimiterGreen",
                -- "RainbowDelimiterViolet",
                -- "RainbowDelimiterCyan",

                -- my custom vscode groups
                -- "MyVsCodeYellow",
                -- "MyVsCodeViolet",
                -- "MyVsCodeBlue",

                "RainbowDelimiterYellow",
                "RainbowDelimiterViolet",
                "RainbowDelimiterBlue",
            },

            strategy = {
                -- Disable html highlighting
                -- html = rainbow.strategy["noop"],
            },
            query = {
                -- Disable react/jsx highlighting
                -- javascript = "rainbow-parens",
                -- tsx = "rainbow-parens",
            },
        }
        require("rainbow-delimiters.setup").setup(opts)

        -- Custom highlight groups for vscode colorscheme
        vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
            callback = function()
                vim.api.nvim_set_hl(0, "MyVsCodeYellow", { fg = "#FFD700" })
                vim.api.nvim_set_hl(0, "MyVsCodeViolet", { fg = "#DA70D6" })
                vim.api.nvim_set_hl(0, "MyVsCodeBlue", { fg = "#179FFF" })
            end,
        })

        vim.keymap.set("n", "<leader>up", function()
            require("rainbow-delimiters").toggle(0)
        end, {})
    end,
}
