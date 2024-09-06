return {
  {
    -- "norcalli/nvim-colorizer.lua",
    "afonsocraposo/nvim-colorizer.lua",
    lazy = false,
    -- config = true,
    config = function()
      require("colorizer").setup({
        dart = { rgb_0x = true }, -- enable parsing "0xAARRGGBB"
      })
    end,
    -- keys = {
    --   { "<leader>d", "<cmd>Docstring<CR>", desc = "Add Python docstring or doctest", mode = { "n" } },
    -- },
  },
}
