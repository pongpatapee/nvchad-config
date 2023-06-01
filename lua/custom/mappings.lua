local M = {}

M.general = {
  i = {
    ["kj"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  },

  n = {
    -- for nvim tmux navigation settings
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "window up"},

    -- split panes
    ["<leader>v"] = {"<cmd> vsplit<CR>", "split window vertically"},
    ["<leader>h"] = {"<cmd> split<CR>", "split window horizontally"},
  },

  v = {
    -- Stay in indent mode
    ["<"] = {"<gv", "indent left and stay in indent mode"},
    [">"] = {">gv", "indent right and stay in indent mode"},
  }
}

M.nvimtree = {
  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<C-n>"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.tabufline = {
  n = {
    -- move between buffers
    ["<S-l>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["<S-h>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
  },
}

M.movelines = {
  i = {
    -- inoremap <A-j> <Esc>:m .+1<CR>==gi
    -- inoremap <A-k> <Esc>:m .-2<CR>==gi
    ["<A-j>"] = {"<Esc>:m .+1<CR>==gi", "moveline down"},
    ["<A-k>"] = {"<Esc>:m .-2<CR>==gi", "moveline up"},
  },

  n = {
    -- nnoremap <A-j> :m .+1<CR>==
    -- nnoremap <A-k> :m .-2<CR>==
    ["<A-j>"] = {":m .+1<CR>==", "moveline down"},
    ["<A-k>"] = {":m .-2<CR>==", "moveline up"},
  },

  v = {
    -- vnoremap <A-j> :m '>+1<CR>gv=gv
    -- vnoremap <A-k> :m '<-2<CR>gv=gv
    ["<A-j>"] = {":m '>+1<CR>gv=gv", "moveline down"},
    ["<A-k>"] = {":m '<-2<CR>gv=gv", "moveline up"},
  },
}

M.transparency = {
  n = {
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle transparency"
    }
  }
}

M.comment = {
  plugin = true,

  -- toggle comment in both modes
  n = {
    ["<C-_>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
  },

  v = {
    ["<C-_>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

return M
