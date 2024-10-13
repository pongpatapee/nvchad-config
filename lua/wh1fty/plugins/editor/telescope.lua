return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        require('telescope').setup({
            pickers = {
                colorscheme = {
                    enable_preview = true,
                },
            },
        })

        -- Note: More lsp keybinds in lsp section

        local builtin = require('telescope.builtin')
        -- File
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find existing buffers" })
        vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = "[S]earch by [G]rep" })
        vim.keymap.set('n', '<leader>,', builtin.buffers, { desc = 'Find existing buffers' })

        -- General search
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = "[S]earch Help Tags" })
        vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
        vim.keymap.set('n', '<leader>sT', builtin.builtin, { desc = '[S]earch [S]elect Telescope' }) -- Search for any possible telescope search
        vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
        vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
        vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
        vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
        vim.keymap.set('n', '<leader>sR', builtin.oldfiles, { desc = '[S]earch Recent Files' })
        vim.keymap.set('n', '<leader>sq', builtin.quickfix, { desc = '[S]earch [Q]uickfix List' })

        -- git
        vim.keymap.set('n', "<leader>gc", builtin.git_commits, { desc = "[G]it [C]ommits" })
        vim.keymap.set('n', "<leader>gs", builtin.git_status, { desc = "[G]it [S]tatus" })


        -- Preview and select colorscheme
        vim.keymap.set("n", "<leader>uc", "<cmd>Telescope colorscheme<cr>", {desc = "[U]i [C]olorscheme, searches through colorscheme"})

    end
}
