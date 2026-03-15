return {
  'tpope/vim-fugitive',
  lazy = true,
  keys = {
    { '<leader>gg', '<cmd>G<cr>', desc = 'Git Window' },
    { '<leader>ga', '<cmd>G add %<cr>', desc = 'Git Add File' },
    { '<leader>gA', '<cmd>G add .<cr>', desc = 'Git Add All' },
    { '<leader>gc', '<cmd>G commit<cr>', desc = 'Git Commit' },
    { '<leader>gp', '<cmd>G push<cr>', desc = 'Git Push' },
    { '<leader>gl', '<cmd>G log --oneline<cr>', desc = 'Git Log' },
  },
}
