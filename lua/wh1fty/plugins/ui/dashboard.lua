return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()

        local conf = {}
        conf.header = {
            "                                                       ",
            "                                                       ",
            "                                                       ",
            "    ██╗    ██╗██╗  ██╗ ██╗███████╗████████╗██╗   ██╗   ",
            "    ██║    ██║██║  ██║███║██╔════╝╚══██╔══╝╚██╗ ██╔╝   ",
            "    ██║ █╗ ██║███████║╚██║█████╗     ██║    ╚████╔╝    ",
            "    ██║███╗██║██╔══██║ ██║██╔══╝     ██║     ╚██╔╝     ",
            "    ╚███╔███╔╝██║  ██║ ██║██║        ██║      ██║      ",
            "     ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═╝╚═╝        ╚═╝      ╚═╝      ",
            "                                                       ",
            "                                                       ",
            "                                                       ",
            "                                                       ",
        }

        conf.center = {
            { action = "Telescope find_files",                           desc = " Find File",       icon = " ", key = "f" },
            { action = "enew",                                           desc = " New File",        icon = " ", key = "n" },
            { action = "Telescope oldfiles",                             desc = " Recent Files",    icon = " ", key = "r" },
            { action = "Telescope live_grep",                            desc = " Find Text",       icon = " ", key = "g" },
            { action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
            { action = "Lazy",                                           desc = " Lazy",            icon = "󰒲 ", key = "l" },
            { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
        }

        conf.footer = function ()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end

        for _, button in ipairs(conf.center) do
            button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
            button.key_format = "  %s" -- format so keys are not in []
        end

        require('dashboard').setup {
            -- config
            theme = 'doom',
            config = {
                -- header = logo,
                header = conf.header,
                center = conf.center,
                footer = conf.footer,
            }
        }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}

}
