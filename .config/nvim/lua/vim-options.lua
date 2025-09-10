vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Set clipboard to unnamed so I can copy and paste with outside programs
vim.cmd("set clipboard=unnamed")
-- Turn off lsp logarithms
vim.lsp.set_log_level("off") -- Or "warn", "error", "off"
