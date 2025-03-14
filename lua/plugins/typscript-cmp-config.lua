return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Use ts_ls instead of tsserver
      lspconfig.ts_ls.setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        on_attach = function(client, bufnr)
          print("TypeScript LSP attached")
        end
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",   -- LSP completion source
      "hrsh7th/cmp-buffer",      -- Buffer completion
      "hrsh7th/cmp-path",        -- Path completion
      "hrsh7th/cmp-cmdline",     -- Command-line completion
      "L3MON4D3/LuaSnip",        -- Snippet engine
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        mapping = cmp.mapping.preset.insert(),
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        }
      })
    end,
  }
}

