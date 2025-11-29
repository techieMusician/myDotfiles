return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        config = function()
          -- Your nvim-lspconfig setup goes here.
          -- This is where you configure specific language servers.
          require("mason").setup()
          require("mason-lspconfig").setup({
            -- Ensure servers are installed by Mason
            ensure_installed = { "lua_ls" },
          })

          -- Configure specific language servers
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
                workspace = {
                  library = vim.api.nvim_get_runtime_file("", true),
                },
              },
            },
          })
          lspconfig.pyright.setup({})
          lspconfig.tsserver.setup({})

          -- Optional: Setup keymaps for LSP actions
          vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
              local opts = { buffer = ev.buf }
              vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
              vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
              vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
              vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
              vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
              vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
              vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
              vim.keymap.set("n", "<space>wl", function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
              end, opts)
              vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
              vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
              vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
              vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
              vim.keymap.set("n", "<space>f", function()
                vim.lsp.buf.format { async = true }
              end, opts)
            end,
          })
        end,
      },
      -- other plugins...
    }
