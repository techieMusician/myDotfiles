vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/nvim-mini/mini.nvim',            -- if you use the mini.nvim suite
    -- 'https://github.com/nvim-mini/mini.icons',        -- if you use standalone mini plugins
    -- 'https://github.com/nvim-tree/nvim-web-devicons', -- if you prefer nvim-web-devicons
    'https://github.com/MeanderingProgrammer/render-markdown.nvim',
})
require('render-markdown').setup({

    opts = {
        indent = {
            -- Mimic org-indent-mode behavior by indenting everything under a heading based on the
            -- level of the heading. Indenting starts from level 2 headings onward by default.

            -- Turn on / off org-indent-mode.
            enabled = true,
            -- Additional modes to render indents.
            render_modes = false,
            -- Amount of additional padding added for each heading level.
            per_level = 4,
            -- Heading levels <= this value will not be indented.
            -- Use 0 to begin indenting from the very first level.
            skip_level = 1,
            -- Do not indent heading titles, only the body.
            skip_heading = true,
            -- Prefix added when indenting, one per level.
            icon = "▎",
            -- Priority to assign to extmarks.
            priority = 0,
            -- Applied to icon.
            highlight = "RenderMarkdownIndent",
        },
        win_options = {
          wrap = { default = true, rendered = true },
          breakindent = { default = true, rendered = true },
          breakindentopt = { default = '', rendered = 'shift:8' },
          linebreak = { default = true, rendered = true},
        },
        heading = {
            border = true,
        },
        code = {
            width = "block",
            left_pad = 2,
            right_pad = 2,
        },
    },
}) -- only mandatory if you want to set custom options
