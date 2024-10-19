local Utils = require("wh1fty.utils")

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            globalstatus = true,
        },

        sections = {
            -- %:p gives absolute path
            -- %:. gives relative path
            -- TODO: use shortened path instead of full relative path
            -- lualine_c = { "vim.fn.expand('%:.')" }, -- show filepath
            lualine_c = { "require('wh1fty.utils').get_shortened_path()" }, -- show filepath
        },
    },
    init = function()
        vim.o.laststatus = 3
    end,
}
