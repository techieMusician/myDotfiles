-- package is none-ls but replaces and uses null-ls
return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.marksman,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format using Code Style" })
  end,
}