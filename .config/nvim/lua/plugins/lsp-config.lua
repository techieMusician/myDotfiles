return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.marksman.setup({})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Display Hover Info" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to Reference" })
      vim.keymap.set("n", "<leader>gc", vim.lsp.buf.code_action, { desc = "Code Actions" })
      local wk = require("which-key")
      wk.register({
        ["<leader>g"] = {
          name = "LSP Functions",
        },
      })
    end,
  },
}
