return {
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    -- follow latest release.
    version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    config = function()
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = {
          -- "./snippets/vscode-python",
          "./snippets/flutter-riverpod-snippets",
          "./snippets/awesome-flutter-snippets",
        },
      })
    end,
  },
}
