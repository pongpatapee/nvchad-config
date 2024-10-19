local M = {}

function M.get_shortened_path()
    -- package.config is a lua specific thing. It is a string
    -- that contains the os related configurations first line
    -- is the directory separator string. Default is '\' for
    -- Windows and '/' for all other systems.

    -- %:p gives absolute path
    -- %:. gives relative path
    local path = vim.fn.expand("%:.")
    local path_sep = package.config:sub(1, 1)
    local parts = vim.split(path, path_sep)
    local max_dir = 4

    if #parts <= max_dir then
        return path
    end

    local shortened_parts = {}
    table.insert(shortened_parts, parts[1])
    table.insert(shortened_parts, "...")
    table.insert(shortened_parts, parts[#parts - 1])
    table.insert(shortened_parts, parts[#parts])

    return table.concat(shortened_parts, path_sep)
end
function M.get_random_colorscheme()
    local colorschemes = {
        "onedark",
        "tokyonight-night",
        "kanagawa",
        "catppuccin",
        "carbonfox",
        "duskfox",
        "nightfox",
        "nordfox",
        "terafox",
        "github_dark_default",
        "retrobox",
        "gruvbox-material",
        "kanagawa-dragon",
        "kanagawa-wave",
        "moonfly",
    }

    -- required otherwise math.random always return the same number
    math.randomseed(os.time())

    local rand_ind = math.random(#colorschemes)
    local colorscheme = colorschemes[rand_ind]
    return colorscheme
end

-- Copied from lazyvim
-- Help fix awkward behavior of default :bdelete which
-- focuses neotree after deleting a buffer
---@param buf number?
function M.bufremove(buf)
    buf = buf or 0
    buf = buf == 0 and vim.api.nvim_get_current_buf() or buf

    if vim.bo.modified then
        local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
        if choice == 0 or choice == 3 then -- 0 for <Esc>/<C-c> and 3 for Cancel
            return
        end
        if choice == 1 then -- Yes
            vim.cmd.write()
        end
    end

    for _, win in ipairs(vim.fn.win_findbuf(buf)) do
        vim.api.nvim_win_call(win, function()
            if not vim.api.nvim_win_is_valid(win) or vim.api.nvim_win_get_buf(win) ~= buf then
                return
            end
            -- Try using alternate buffer
            local alt = vim.fn.bufnr("#")
            if alt ~= buf and vim.fn.buflisted(alt) == 1 then
                vim.api.nvim_win_set_buf(win, alt)
                return
            end

            -- Try using previous buffer
            local has_previous = pcall(vim.cmd, "bprevious")
            if has_previous and buf ~= vim.api.nvim_win_get_buf(win) then
                return
            end

            -- Create new listed buffer
            local new_buf = vim.api.nvim_create_buf(true, false)
            vim.api.nvim_win_set_buf(win, new_buf)
        end)
    end
    if vim.api.nvim_buf_is_valid(buf) then
        pcall(vim.cmd, "bdelete! " .. buf)
    end
end

return M
