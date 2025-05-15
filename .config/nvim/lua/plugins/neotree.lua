return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode`
	},
  keys = {
    { "<C-n>", "<cmd>Neotree filesystem reveal left<CR>", desc = "Open Neotree to left" },
    { "<leader>bf", "<cmd>Neotree buffers reveal float<CR>", desc = "Reaveal buffers in floating window" },
    { "<leader>b", desc = "Buffer functions" },
  }
}
