return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "prettierd")
      table.insert(opts.ensure_installed, "stylua")
      table.insert(opts.ensure_installed, "shellcheck")
      table.insert(opts.ensure_installed, "shfmt")
      table.insert(opts.ensure_installed, "pyright")
      table.insert(opts.ensure_installed, "black")
      table.insert(opts.ensure_installed, "deno")
    end,

    {},

    --   opts = {
    --     ensure_installed = {
    --       "stylua",
    --       "shellcheck",
    --       "shfmt",
    --       "flake8",
    --       "prettierd",
    --       "deno",
    --       "pyright",
    --       "black",
    --     },
    -- },
  },
}
