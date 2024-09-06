return {
  {
    "pixelneo/vim-python-docstring",
    lazy = true,
    config = true,
    keys = {
      { "<leader>d", "<cmd>Docstring<CR>", desc = "Add Python docstring or doctest", mode = { "n" } },
    },
  },
}
