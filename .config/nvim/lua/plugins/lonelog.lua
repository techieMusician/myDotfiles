return {
  {
  "Django0033/lonelog.nvim",
  config = function()
    require("lonelog").setup({
-- Keybindings
    keymaps = {
      oracle = "<leader>lo",
      dice = "<leader>ldr",
      tags = "<leader>lt",
      scenes = "<leader>ls",
      chaos = "<leader>lC",
      d4 = "<leader>ld4",
      d6 = "<leader>ld6",
      d8 = "<leader>ld8",
      d10 = "<leader>lda",
      d12 = "<leader>ldb",
      d20 = "<leader>ldw",
      d100 = "<leader>ldc",
    },

    use_telescope = auto,  -- Set to true or "auto" to use Telescope picker
    sidebar = { width = 50 },  -- Sidebar width when Telescope is disabled
    -- Floating window settings
    float = {
      border = "rounded",
      height = 0.4,
      width = 0.6,
    },

  -- Oracle settings
    oracle = {
      default_table = "fate",
      persist_chaos = true,      -- Persist Mythic chaos factor to file
      chaos_file = "chaos_factor.json",  -- Chaos factor file
    },

  -- Dice settings
    dice = {
      max_dice = 100,
      max_sides = 1000,
    },
  })
  end,
},
{ 'techieMusician/mythic.nvim' }
}
