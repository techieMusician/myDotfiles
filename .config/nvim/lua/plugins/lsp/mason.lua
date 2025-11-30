return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "marksman",
        "html",
        "cssls",
        "phpactor",
        "ts_ls",
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
