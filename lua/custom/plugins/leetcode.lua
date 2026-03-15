return {
  {
    'New9c/leetcode.nvim',
    branch = 'personal',
    lazy = false,
    -- dir = '/home/ninc/leetcode.nvim/',
    build = ':TSUpdate html',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      --optional
      'nvim-treesitter/nvim-treesitter',
      'rcarriga/nvim-notify',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      image_support = true,
      lang = 'python3',
      injector = { ---@type table<lc.lang, lc.inject>
        ['cpp'] = {
          before = { '#include <bits/stdc++.h>', 'using namespace std;' },
        },
      },
    },
    keys = {
      { '<leader>lrm', '<cmd>Leet random status=todo difficulty=medium<CR>', desc = 'Leet random medium' },
      { '<leader>li', '<cmd>Leet info<CR>', desc = 'Leet info' },
      { '<leader>la', '<cmd>Leet list status=notac<CR>', desc = 'Leet Redo' },
      { '<leader>le', '<cmd>Leet list status=todo difficulty=easy<CR>', desc = 'Leet Easys' },
      { '<leader>lm', '<cmd>Leet list status=todo difficulty=medium<CR>', desc = 'Leet Mediums' },
      { '<leader>lh', '<cmd>Leet list status=todo difficulty=hard<CR>', desc = 'Leet Hards' },
      { '<leader>lt', '<cmd>Leet test<CR>', desc = 'Leet test' },
      { '<leader>ll', '<cmd>Leet lang<CR>', desc = 'Leet lang' },
      { '<leader>lc', '<cmd>Leet console<CR>', desc = 'Leet console' },
      { '<leader>ls', '<cmd>Leet submit<CR>', desc = 'Leet submit' },
      { '<leader>ld', '<cmd>Leet desc<CR>', desc = 'Leet desc' },
    },
  },
}
