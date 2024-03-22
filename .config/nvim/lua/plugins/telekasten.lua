return {
  "renerocksai/telekasten.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("telekasten").setup({
      home = vim.fn.expand("~/zettelkasten"), -- Put the name of your notes directory here
      dailies = vim.fn.expand("~/zettelkasten/dailies"),
      weeklies = vim.fn.expand("~/zettelkasten/weeklies"),
    })
    -- Most used functions
    vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
    vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
    vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
    vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
    vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
    vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
    vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
    vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")
    vim.keymap.set({"n", "i"}, "<C-t>", "<cmd>Telekasten toggle_todo<CR>")
    local wk = require("which-key")
    wk.register({
      ["<leader>z"] = {
        name = "Zettelkasten",
      },
    })
  end,
}
