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

      use_telescope = false,  -- Set to true or "auto" to use Telescope picker
      sidebar = { width = 50 },  -- Sidebar width when Telescope is disabled
    })
  end,
  },
{ 'Django0033/mythic.nvim' }
}
