return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
        "lua_ls",
        "rust_analyzer",
--        "marksman",
        "markdown_oxide",
        "html",
        "cssls",
        "ts_ls",
        "intelephense",
        },
    },
    dependencies = {
        { "mason-org/mason.nvim",
          opts = {
            ui = {
              icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
              },
            },
          },
        },
        "neovim/nvim-lspconfig",
    },
}
