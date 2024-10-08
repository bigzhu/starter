-- lazy 的配置, 可以参看  example.lua
return {

  { "arturgoms/moonbow.nvim" },
  { "rebelot/kanagawa.nvim" },
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    init = function()
      vim.opt.background = "dark" -- or "light" if you want light mode
    end,
  },
  {
    "eddyekofo94/gruvbox-flat.nvim",
    priority = 1000,
    enabled = true,
    config = function()
      vim.cmd([[colorscheme gruvbox-flat]])
      vim.g.gruvbox_flat_style = "dark"
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
      -- colorscheme = "moonbow",
    },
  },
}
