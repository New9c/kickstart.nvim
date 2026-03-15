return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  lazy = false,
  opts = {},
  keys = {
    { '<leader>re', '<cmd>Refactor extract <CR>', mode = 'x', desc = 'Extract to function' },
    { '<leader>rf', '<cmd>Refactor extract_to_file <CR>', mode = 'x', desc = 'Extract to file' },
    { '<leader>rv', '<cmd>Refactor extract_var <CR>', mode = 'x', desc = 'Extract to variable' },
    { '<leader>ri', '<cmd>Refactor inline_var<CR>', mode = { 'n', 'x' }, desc = 'Inline variable' },
    { '<leader>rI', '<cmd>Refactor inline_func<CR>', mode = 'n', desc = 'Inline function' },
    { '<leader>rb', '<cmd>Refactor extract_block<CR>', mode = 'n', desc = 'Extract block' },
    { '<leader>rbf', '<cmd>Refactor extract_block_to_file<CR>', mode = 'n', desc = 'Extract block to file' },
  },
}
