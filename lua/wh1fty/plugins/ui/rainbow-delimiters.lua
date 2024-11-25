return {
    "HiPhish/rainbow-delimiters.nvim",
    -- enabled = false,
    opts = {
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

            -- vscode like highlight groups
            "RainbowDelimiterYellow",
            -- "RainbowDelimiterViolet",
            "RainbowDelimiterRed",
            "RainbowDelimiterBlue",
        },
    },
    config = function(_, opts)
        -- TODO: Get custom highlight working

        -- RainbowDelimiterRed xxx guifg=#c586c0
        -- RainbowDelimiterOrange xxx guifg=#ce9178
        -- RainbowDelimiterYellow xxx guifg=#d7ba7d
        -- RainbowDelimiterGreen xxx guifg=#6a9955
        -- RainbowDelimiterCyan xxx guifg=#4ec9b0
        -- RainbowDelimiterBlue xxx guifg=#18a2fe
        -- RainbowDelimiterViolet xxx guifg=#646695
        require("rainbow-delimiters.setup").setup(opts)
    end,
}
