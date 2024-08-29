-- Define color palette
local c = {
  ui = {
    title = "#282828", -- Light color for titles
    base = "#282828", -- Dark background color
    green = "#b8bb26", -- Green color
    yellow = "#fabd2f", -- Yellow color
  },
}
return {

  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    build = "make", -- This is Optional, only if you want to use tiktoken_core to calculate tokens count
    opts = {
      -- add any opts here
      mappings = {
        --- @class AvanteConflictMappings
        diff = {
          ours = "<leader>o",
          theirs = "<leader>t",
          both = "<leader>b",
          next = "]x",
          prev = "[x",
        },
        jump = {
          next = "]]",
          prev = "[[",
        },
        submit = {
          normal = "<CR>", -- If you want break line, using SHIFT+ENTER
          insert = "<CR>",
        },
      },

      colorscheme = "gruvbox",
      gruvbox = {
        contrast = "hard",
        palette_overrides = {
          bright_green = "#b8bb26",
          bright_yellow = "#fabd2f",
        },
      },
      highlights = {
        -- AvanteTitle = { fg = c.ui.title, bg = c.ui.base },
        -- AvanteReversedTitle = { fg = c.ui.base },
        -- AvanteSubtitle = { fg = c.ui.green, bg = c.ui.base },
        -- AvanteReversedSubtitle = { fg = c.ui.base },
        -- AvanteThirdTitle = { fg = c.ui.yellow, bg = c.ui.base },
        -- AvanteReversedThirdTitle = { fg = c.ui.base },
        -- AvanteConflictCurrent = "DiffText",
        -- AvanteConflictIncoming = "DiffAdd",
      },
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below is optional, make sure to setup it properly if you have lazy=true
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
