-- package is none-ls but replaces and uses null-ls
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
			},
		})
		vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format using Code Style" })
	end,
}
