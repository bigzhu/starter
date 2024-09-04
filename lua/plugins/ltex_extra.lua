-- 句子和拼写检查
-- mason need install ltex-ls
-- https://medium.com/@Erik_Krieg/free-and-open-source-grammar-correction-in-neovim-using-ltex-and-n-grams-dea9d10bc964
return {
  "barreiroleo/ltex_extra.nvim",
  -- ft = { "markdown", "tex", "dart", "go", "lua" },
  dependencies = { "neovim/nvim-lspconfig" },

  config = function()
    require("ltex_extra").setup({
      -- your_ltex_extra_opts,
      server_opts = {
        -- capabilities = your_capabilities,
        on_attach = function(client, bufnr)
          -- your on_attach process
        end,
        settings = {
          ltex = {
            -- motherTounge = "en",
            filetypes = { "markdown", "tex", "dart", "go", "lua" },
            language = "en",
            additionalRules = {
              enablePickyRules = true,
              languageModel = "~/Sync/config/nvim/models/",
            },
          },
        },
      },
    })
  end,
}
