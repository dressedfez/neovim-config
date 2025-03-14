return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Configure JavaScript/TypeScript LSP
      lspconfig.ts_ls.setup({
        on_attach = function(client, bufnr)
          print("TypeScript LSP attached")
        end
      })
    end,
  }
}

