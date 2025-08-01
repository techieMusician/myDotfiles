return {
  {  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      ignore_install = { "latex" },
      })
  end,
  },
  {
  "HiPhish/rainbow-delimiters.nvim",
  },
}
