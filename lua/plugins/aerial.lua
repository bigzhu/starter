return {
  {
    "stevearc/aerial.nvim",
    config = function()
      local aerial = require("aerial")
      aerial.setup({
        attach_mode = "window",
        open_automatic = true,
        backends = { "treesitter", "lsp", "markdown" },
      })
    end,
  },
}
