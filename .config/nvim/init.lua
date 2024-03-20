vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- set leader key early so keybindings are correct
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
{ "folke/which-key.nvim"},
{ "nvim-telescope/telescope.nvim", branch = '0.1.x',
    dependencies = { "nvim-lua/plenary.nvim" }},
{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}
local opts = {}

require("lazy").setup(plugins, opts)

require("catppuccin").setup({
  flavour = "mocha",
})

-- setup keybindings for Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

local configs = require("nvim-treesitter.configs")
configs.setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "python", "html" },
  highlight = { enable = true },
  indent = { enable = true },
})

vim.cmd.colorscheme "catppuccin"
