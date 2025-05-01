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
  },
}
