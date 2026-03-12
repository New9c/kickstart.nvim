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
      { '<leader>lrm', ':Leet random status=todo difficulty=medium<CR>', desc = 'Leet random medium' },
      { '<leader>li', ':Leet info<CR>', desc = 'Leet info' },
      { '<leader>la', ':Leet list status=notac<CR>', desc = 'Leet Redo' },
      { '<leader>le', ':Leet list status=todo difficulty=easy<CR>', desc = 'Leet Easys' },
      { '<leader>lm', ':Leet list status=todo difficulty=medium<CR>', desc = 'Leet Mediums' },
      { '<leader>lh', ':Leet list status=todo difficulty=hard<CR>', desc = 'Leet Hards' },
      { '<leader>lt', ':Leet test<CR>', desc = 'Leet test' },
      { '<leader>ll', ':Leet lang<CR>', desc = 'Leet lang' },
      { '<leader>lc', ':Leet console<CR>', desc = 'Leet console' },
      { '<leader>ls', ':Leet submit<CR>', desc = 'Leet submit' },
      { '<leader>ld', ':Leet desc<CR>', desc = 'Leet desc' },
    },
  },
}
