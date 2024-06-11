# ScratchNvim: My own neovim configuration from scratch

<!--toc:start-->
- [ScratchNvim: My own neovim configuration from scratch](#scratchnvim-my-own-neovim-configuration-from-scratch)
  - [Things I've learned making this config](#things-ive-learned-making-this-config)
  - [Conclusion](#conclusion)
<!--toc:end-->

This branch contains a minimal/incomplete neovim config written from scratch with lazy.nvim as the package manager.
The folder strcuture purposefully mimics the template of LazyVim configurations. 
Although deviated slightly to help me understand the big picture of how configurations work.

## Things I've learned making this config

1. The magic of the LazyVim distribution is actually from a single line

``` lua
require("lazy").setup({
  spec = {
    -- This line loads all plugins from the lazyvim library
    -- Pulls from "github.com/LazyVim/LazyVim"
    { "LazyVim/LazyVim", import = "lazyvim.plugins" }, -- This line right here


    { import = "wh1fty.plugins" },
  },

})
```

With the `lazy.nvim` package manager, you can modularize your config by specifying an import path to a directory. 
The import syntax is very similar to `require`, where I am specifying `"wh1fty.plugins"` as the module.
All *.lua files under that directory will be used to load the plugins. 

A neat thing I never realized is `{ "LazyVim/LazyVim", import = "lazyvim.plugins" }` essentially pulls the `"LazyVim/Lazyvim"` repo, then imports the module `"lazyvim.plugins"` from that repository. Which is where all the LazyVim plugin magic comes in. 


2. Configuring Neovim from scratch is a great pain

There are a lot of configuration options, just within vim.opt and keybindings itself. Most of these are copy and paste, but to fully configure them still requires some work and is annoying. Not to mention the LSP setup which I have not even done.

There are many ways to configure the plugin itself with lazy.nvim, leading to confusion with the docs. 


## Conclusion

I believe this exercise has helped me understand how to configure my own neovim config from scratch. Although I haven't learned how to configure LSP and formatting, I now understand how to structure a neovim configuration and how to use lua more properly.


