vim.pack.add({
    "https://github.com/nvim-telescope/telescope-ui-select.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    { src = "https://github.com/nvim-telescope/telescope.nvim", branch = "0.1.x" }
})

require("telescope").setup({
    keys = {
      { "<leader>f", desc = "Find" },
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>",  desc = "Serch File Contents With RipGrep" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>",    desc = "Search Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<CR>",  desc = "Search Help Tags" },
    },
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
        },
    },
})
