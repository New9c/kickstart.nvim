return {
  'NeogitOrg/neogit',
  lazy = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim', -- optional
    -- Only one of these is needed.
    'sindrets/diffview.nvim', -- optional
    -- "esmuellert/codediff.nvim"
  },
  cmd = 'Neogit',
  keys = {
    { '<leader>g', '<cmd>Neogit<cr>', desc = 'Show Neogit UI' },
  },
}
