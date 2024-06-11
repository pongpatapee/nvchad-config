return {
  "navarasu/onedark.nvim",


  config = function()
    require("onedark").setup({
      style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = false,  -- Show/hide background
    })
    vim.cmd("colorscheme onedark")
  end

}
