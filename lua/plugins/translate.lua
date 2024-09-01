return {
  {
    "uga-rosa/translate.nvim",
    lazy = true,
    config = true,
    keys = {
      { "tw", "viw<CMD>Translate ZH<CR>", desc = "Translate word to Chinese", mode = { "n" } },
      { "ts", "<CMD>Translate ZH<CR>", desc = "Translate sentence to Chinese", mode = { "n" } },
    },
  },
}
