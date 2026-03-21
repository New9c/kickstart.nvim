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
      { '<leader>o', '<cmd>Oil<CR>', mode = 'n', desc = 'Oil' },
      { '<leader>C', '<cmd>Oil ~/.config<CR>', mode = 'n', desc = 'To Config' },
      { '<leader>H', '<cmd>Oil ~<CR>', mode = 'n', desc = 'To Home' },
      { '<leader>D', '<cmd>Oil ~/Downloads<CR>', mode = 'n', desc = 'To Downloads' },
      { '<leader>O', ':Oil ', mode = 'n', silent = false, desc = 'To ?' },
    },
  },
}
