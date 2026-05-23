vim.pack.add({
    "https://github.com/nvim-telescope/telescope-ui-select.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    { src = "https://github.com/nvim-telescope/telescope.nvim", branch = "0.1.x" }
})

require("telescope").setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
        },
    },
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
