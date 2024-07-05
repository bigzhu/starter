return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {
          settings = {
            dart = {
              lineLength = 120,
            },
          },
        },
      },
    },
  },
}
