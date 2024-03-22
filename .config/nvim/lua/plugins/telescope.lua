return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
			-- Set usefull keybindings
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search File Contents With RipGrep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Search Buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Search Help Tags" })
			-- Register <leader>f desc with whichkey
			local wk = require("which-key")
			wk.register({
				["<leader>f"] = {
					name = "+Find"
				},
			})
		end,
	},
}
