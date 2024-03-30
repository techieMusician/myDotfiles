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
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		keys = {
			{ "K", vim.lsp.buf.hover, desc = "Display Hover Info" },
			{ "<leader>gd", vim.lsp.buf.definition, desc = "Go to Definition" },
			{ "<leader>gr", vim.lsp.buf.references, desc = "Go to Reference" },
			{ "<leader>gc", vim.lsp.buf.code_action, desc = "Code Actions" },
		},
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.marksman.setup({})
			lspconfig.clangd.setup({})
		end,
	},
}
