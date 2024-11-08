return {
    "akinsho/toggleterm.nvim",
    version = "*",
    -- opts = {
    -- },
    config = function()
        require("toggleterm").setup()
        local Terminal = require("toggleterm.terminal").Terminal

        local float_term = Terminal:new({ hidden = true, direction = "float" })
        local horizontal_term = Terminal:new({ hidden = true, direction = "horizontal" })

        local toggleterm = function(term, cmd)
            if cmd then
                float_term.cmd = cmd
            end
            term:toggle()
        end

        -- Setup lazygit
        vim.keymap.set("n", "<leader>gg", function()
            toggleterm(float_term, "lazygit")
            -- Override entering normal mode in lazygit ("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
            vim.keymap.set("t", "<esc>", "<esc>", { buffer = float_term.bufnr, nowait = true })
        end, { desc = "Lazygit" })

        vim.keymap.set("n", "<leader>gl", function()
            toggleterm(float_term, "lazygit log")
            -- Override entering normal mode in lazygit ("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
            vim.keymap.set("t", "<esc>", "<esc>", { buffer = float_term.bufnr, nowait = true })
        end, { desc = "Lazygit Log" })

        -- regular terminal command
        vim.keymap.set({ "n", "t" }, "<A-t>", function()
            toggleterm(horizontal_term)
        end, { desc = "vscode like terminal" })
    end,
}
