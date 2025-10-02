return {
'tpope/vim-fugitive',
  -- Lazy load Fugitive only when specific commands are used
  cmd = { 'Git', 'G' },
  -- Or, if you want it always loaded (not lazy-loaded), you can use:
  -- lazy = false,
  config = function()
    -- Any specific Fugitive configurations can go here
    -- For example, setting up a custom Git command alias:
    -- vim.cmd [[command! -buffer -bang Glog :Git log <bang>]]
  end,
}
