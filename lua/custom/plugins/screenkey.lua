return {
  'New9c/screenkey.nvim',
  -- dir = '/home/ninc/screenkey.nvim',
  lazy = false,
  branch = 'personal',
  opts = {
    win_opts = {
      width = 40,
      height = 1,
      title = '  Screenkey OuO',
      title_pos = 'center',
      border = 'rounded',
      style = 'minimal',
      zindex = 10000,
    },
    separator = '  ',
    show_leader = false,
    group_mappings = true,
    compress_after = 3,
    clear_after = 0,
  },

  keys = {
    { '<leader>k', ':Screenkey<CR>', desc = 'Screenkey' },
  },
}
