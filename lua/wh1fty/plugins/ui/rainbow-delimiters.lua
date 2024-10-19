return {
    "HiPhish/rainbow-delimiters.nvim",
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
            "RainbowDelimiterViolet",
            "RainbowDelimiterBlue",
        },
    },
    config = function(_, opts)
        require("rainbow-delimiters.setup").setup(opts)
    end,
}
