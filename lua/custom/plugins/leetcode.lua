return {
  {
    'New9c/leetcode.nvim',
    branch = 'personal',
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
    init = function()
      vim.keymap.set('n', '<leader>lrm', ':Leet random status=todo difficulty=medium<CR>', { desc = 'Leet random medium' })
      vim.keymap.set('n', '<leader>lre', ':Leet random status=todo difficulty=easy<CR>', { desc = 'Leet random easy' })
      vim.keymap.set('n', '<leader>li', ':Leet info<CR>', { desc = 'Leet info' })
      vim.keymap.set('n', '<leader>la', ':Leet list status=notac<CR>', { desc = 'Leet Redo' })
      vim.keymap.set('n', '<leader>le', ':Leet list status=todo difficulty=easy<CR>', { desc = 'Leet Easys' })
      vim.keymap.set('n', '<leader>lm', ':Leet list status=todo difficulty=medium<CR>', { desc = 'Leet Mediums' })
      vim.keymap.set('n', '<leader>lh', ':Leet list status=todo difficulty=hard<CR>', { desc = 'Leet Hards' })
      vim.keymap.set('n', '<leader>lt', ':Leet test<CR>', { desc = 'Leet test' })
      vim.keymap.set('n', '<leader>ll', ':Leet lang<CR>', { desc = 'Leet lang' })
      vim.keymap.set('n', '<leader>lc', ':Leet console<CR>', { desc = 'Leet console' })
      vim.keymap.set('n', '<leader>ls', ':Leet submit<CR>', { desc = 'Leet submit' })
      vim.keymap.set('n', '<leader>ld', ':Leet desc<CR>', { desc = 'Leet desc' })
    end,
  },
}
