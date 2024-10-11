return {
    {
        'lewis6991/gitsigns.nvim',
        opts = {
            on_attach = function(bufnr)
                local gitsigns = require 'gitsigns'

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map('n', ']h', function()
                    if vim.wo.diff then
                        vim.cmd.normal { ']c', bang = true }
                    else
                        gitsigns.nav_hunk 'next'
                    end
                end, { desc = 'Jump to next git [c]hange' })

                map('n', '[h', function()
                    if vim.wo.diff then
                        vim.cmd.normal { '[c', bang = true }
                    else
                        gitsigns.nav_hunk 'prev'
                    end
                end, { desc = 'Jump to previous git [c]hange' })

                -- Actions
                -- visual mode
                map('v', '<leader>ghs', function()
                    gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
                end, { desc = 'stage git hunk' })
                map('v', '<leader>ghr', function()
                    gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
                end, { desc = 'reset git hunk' })
                -- normal mode
                map('n', '<leader>ghs', gitsigns.stage_hunk, { desc = 'git [s]tage hunk' })
                map('n', '<leader>ghr', gitsigns.reset_hunk, { desc = 'git [r]eset hunk' })
                map('n', '<leader>ghS', gitsigns.stage_buffer, { desc = 'git [S]tage buffer' })
                map('n', '<leader>ghu', gitsigns.undo_stage_hunk, { desc = 'git [u]ndo stage hunk' })
                map('n', '<leader>ghR', gitsigns.reset_buffer, { desc = 'git [R]eset buffer' })
                map('n', '<leader>ghp', gitsigns.preview_hunk, { desc = 'git [p]review hunk' })
                map('n', '<leader>ghb', gitsigns.blame_line, { desc = 'git [b]lame line' })
                map('n', '<leader>ghd', gitsigns.diffthis, { desc = 'git [d]iff against index' })
                map('n', '<leader>ghD', function()
                    gitsigns.diffthis '@'
                end, { desc = 'git [D]iff against last commit' })
                -- Toggles
                map('n', '<leader>gtb', gitsigns.toggle_current_line_blame, { desc = '[T]oggle git show [b]lame line' })
                map('n', '<leader>gtD', gitsigns.toggle_deleted, { desc = '[T]oggle git show [D]eleted' })

                -- TODO: Setup lazygit keybinds
                -- Lazygit (not technically related to gitsign)
                -- map("n", "<leader>gg", function() LazyVim.lazygit( { cwd = LazyVim.root.git() }) end, { desc = "Lazygit (Root Dir)" })
                -- map("n", "<leader>gG", function() LazyVim.lazygit() end, { desc = "Lazygit (cwd)" })
                -- map("n", "<leader>gb", LazyVim.lazygit.blame_line, { desc = "Git Blame Line" })
                -- map("n", "<leader>gB", LazyVim.lazygit.browse, { desc = "Git Browse" })

                -- map("n", "<leader>gf", function()
                -- local git_path = vim.api.nvim_buf_get_name(0)
                -- LazyVim.lazygit({args = { "-f", vim.trim(git_path) }})
                -- end, { desc = "Lazygit Current File History" })

                -- map("n", "<leader>gl", function()
                -- LazyVim.lazygit({ args = { "log" }, cwd = LazyVim.root.git() })
                -- end, { desc = "Lazygit Log" })
                -- map("n", "<leader>gL", function()
                -- LazyVim.lazygit({ args = { "log" } })
                -- end, { desc = "Lazygit Log (cwd)" })


            end,
        },
    }
}
