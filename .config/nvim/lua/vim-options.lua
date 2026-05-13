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
vim.lsp.log.set_level("off") -- Or "warn", "error", "off"
-- vim.g.vinfo_repo_path = "/usr/share/info"
-- vim.g.infoprg = "info"

-- Settings for auto-session
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
