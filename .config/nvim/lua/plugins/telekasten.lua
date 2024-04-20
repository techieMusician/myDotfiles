return {
  "renerocksai/telekasten.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  keys = {
    { "<leader>zf", "<cmd>Telekasten find_notes<CR>",      desc = "Find Notes" },
    { "<leader>zg", "<cmd>Telekasten search_notes<CR>",    desc = "Search Within Notes" },
    { "<leader>zd", "<cmd>Telekasten goto_today<CR>",      desc = "Goto Today's Note" },
    { "<leader>zz", "<cmd>Telekasten follow_link<CR>",     desc = "Follow Link" },
    { "<leader>zn", "<cmd>Telekasten new_note<CR>",        desc = "Create New Note" },
    { "<leader>zc", "<cmd>Telekasten show_calendar<CR>",   desc = "Show Calendar" },
    { "<leader>zb", "<cmd>Telekasten show_backlinks<CR>",  desc = "Show Backlinks" },
    { "<leader>zI", "<cmd>Telekasten insert_img_link<CR>", desc = "Insert Image Link" },
    { "<C-t>",      "<cmd>Telekasten toggle_todo<CR>",     mode = { "n", "i" },         desc = "Togle Todo" },
    { "<leader>z", desc = "Telekasten"},
  },
  config = function()
    require("telekasten").setup({
      home = vim.fn.expand("~/zettelkasten"), -- Put the name of your notes directory here
      dailies = vim.fn.expand("~/zettelkasten/dailies"),
      weeklies = vim.fn.expand("~/zettelkasten/weeklies"),
      plug_into_calendar = true, -- use calendar integration
      calendar_opts = {
        weeknm = 2,           -- calendar week display mode:
        --   1 .. 'WK01'
        --   2 .. 'WK 1'
        --   3 .. 'KW01'
        --   4 .. 'KW 1'
        --   5 .. '1'

        calendar_monday = 0, -- use monday as first day of week:
        --   1 .. true
        --   0 .. false

        calendar_mark = "left-fit", -- calendar mark placement
        -- where to put mark for marked days:
        --   'left'
        --   'right'
        --   'left-fit'
      },
    })
    -- Most used functions
  end,
}
