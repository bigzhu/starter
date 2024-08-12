return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        filetype = {
          python = "poetry run python",
          markdown = 'open "obsidian://open?file=$fileNameWithoutExt"',
        },
      })
    end,
  },
}
