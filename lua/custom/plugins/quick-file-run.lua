return {
  --[[
  {
    'jellydn/quick-code-runner.nvim',
    dependencies = { 'MunifTanjim/nui.nvim' },
    opts = {
      debug = true,
    },
    cmd = { 'QuickCodeRunner', 'QuickCodePad' },
    keys = {
      {
        '<leader>cr',
        ':QuickCodeRunner<CR>',
        desc = 'Quick Code Runner',
        mode = 'v',
      },
      {
        '<leader>cr',
        'gg0vGg$:QuickCodeRunner<CR>',
        desc = 'Quick File Code Runner',
        mode = 'n',
      },
      {
        '<leader>cp',
        ':QuickCodePad<CR>',
        desc = 'Quick Code Pad',
      },
    },
  },
  ]]
  --
}
