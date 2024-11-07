return {
    "akinsho/toggleterm.nvim",
    version = "*",
    -- opts = {
    -- },
    config = function()
        require("toggleterm").setup()
        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

        local toggleterm = function()
            local term = Terminal:new({ direction = "horizontal" })
            term:toggle()
        end

        -- Setup lazygit
        vim.keymap.set("n", "<leader>gg", function()
            lazygit:toggle()
        end, { desc = "Lazygit" })
        vim.keymap.set("n", "<leader>gl", function()
            lazygit.cmd = "lazygit log"
            lazygit:toggle()
        end, { desc = "Lazygit Log" })

        -- Override entering normal mode in lazygit ("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
        vim.keymap.set("t", "<esc>", "<esc>", { buffer = lazygit.bufnr, nowait = true })

        -- regular terminal command
        vim.keymap.set({ "n", "t" }, "<A-t>", toggleterm, { desc = "vscode like terminal" })
    end,
}
