return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>f", desc = "Find" },
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>",  desc = "Serch File Contents With RipGrep" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>",    desc = "Search Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<CR>",  desc = "Search Help Tags" },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
