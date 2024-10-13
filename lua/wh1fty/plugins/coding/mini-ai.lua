return {
    'echasnovski/mini.ai',
    version = '*',
    opts = function()
        local ai = require("mini.ai")
        return {
            n_lines = 500,
            custom_textobjects = {
                o = ai.gen_spec.treesitter({ -- code block
                    a = { "@block.outer", "@conditional.outer", "@loop.outer" },
                    i = { "@block.inner", "@conditional.inner", "@loop.inner" },
                }),
                f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }), -- function
                c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }), -- class
                d = { "%f[%d]%d+" },                                                    -- digits
            },
        }
    end,
}


-- -- LazyVim Config
-- {
--   "echasnovski/mini.ai",
--   event = "VeryLazy",
--   opts = function()
--     local ai = require("mini.ai")
--     return {
--       n_lines = 500,
--       custom_textobjects = {
--         o = ai.gen_spec.treesitter({ -- code block
--           a = { "@block.outer", "@conditional.outer", "@loop.outer" },
--           i = { "@block.inner", "@conditional.inner", "@loop.inner" },
--         }),
--         f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }), -- function
--         c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }), -- class
--         t = { "<([%p%w]-)%f[^<%w][^<>]->.-</%1>", "^<.->().*()</[^/]->$" }, -- tags
--         d = { "%f[%d]%d+" }, -- digits
--         e = { -- Word with case
--           { "%u[%l%d]+%f[^%l%d]", "%f[%S][%l%d]+%f[^%l%d]", "%f[%P][%l%d]+%f[^%l%d]", "^[%l%d]+%f[^%l%d]" },
--           "^().*()$",
--         },
--         i = LazyVim.mini.ai_indent, -- indent
--         g = LazyVim.mini.ai_buffer, -- buffer
--         u = ai.gen_spec.function_call(), -- u for "Usage"
--         U = ai.gen_spec.function_call({ name_pattern = "[%w_]" }), -- without dot in function name
--       },
--     }
--   end,
--   config = function(_, opts)
--     require("mini.ai").setup(opts)
--     LazyVim.on_load("which-key.nvim", function()
--       vim.schedule(function()
--         LazyVim.mini.ai_whichkey(opts)
--       end)
--     end)
--   end,
-- }, 


  -- local objects = {
  --   { " ", desc = "whitespace" },
  --   { '"', desc = '" string' },
  --   { "'", desc = "' string" },
  --   { "(", desc = "() block" },
  --   { ")", desc = "() block with ws" },
  --   { "<", desc = "<> block" },
  --   { ">", desc = "<> block with ws" },
  --   { "?", desc = "user prompt" },
  --   { "U", desc = "use/call without dot" },
  --   { "[", desc = "[] block" },
  --   { "]", desc = "[] block with ws" },
  --   { "_", desc = "underscore" },
  --   { "`", desc = "` string" },
  --   { "a", desc = "argument" },
  --   { "b", desc = ")]} block" },
  --   { "c", desc = "class" },
  --   { "d", desc = "digit(s)" },
  --   { "e", desc = "CamelCase / snake_case" },
  --   { "f", desc = "function" },
  --   { "g", desc = "entire file" },
  --   { "i", desc = "indent" },
  --   { "o", desc = "block, conditional, loop" },
  --   { "q", desc = "quote `\"'" },
  --   { "t", desc = "tag" },
  --   { "u", desc = "use/call" },
  --   { "{", desc = "{} block" },
  --   { "}", desc = "{} with ws" },
  -- }


