return {
  "aiken-lang/editor-integration-nvim",
  config = function()
    require("lspconfig").aiken.setup({})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.ak",
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
  dependencies = {
    "neovim/nvim-lspconfig",
  },
}
