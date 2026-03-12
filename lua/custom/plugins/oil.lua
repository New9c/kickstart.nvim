return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      { '<leader>o', ':Oil<CR>', mode = 'n', silent = true, desc = 'Oil' },
      { '<leader>tc', ':Oil ~/.config<CR>', mode = 'n', silent = true, desc = 'To Config' },
      { '<leader>th', ':Oil ~<CR>', mode = 'n', silent = true, desc = 'To Home' },
      { '<leader>td', ':Oil ~/Downloads<CR>', mode = 'n', silent = true, desc = 'To Downloads' },
      { '<leader>tt', ':Oil ', mode = 'n', silent = false, desc = 'To ?' },
    },
  },
}
