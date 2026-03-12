return {
  'theprimeagen/99',
  branch = 'master',
  dependencies = {
    { 'saghen/blink.compat', version = '2.*', opts = {} },
  },
  config = function()
    local _99 = require '99'
    -- For logging that is to a file if you wish to trace through requests
    -- for reporting bugs, i would not rely on this, but instead the provided
    -- logging mechanisms within 99.  This is for more debugging purposes
    _99.setup {
      provider = _99.OpenCodeProvider,
      model = 'opencode/big-pickle',
      completion = {
        source = 'blink',
        custom_rules = {
          'rules/',
        },
      },
      -- Any other required fields
      md_files = { 'AGENT.md' },
    }
    vim.keymap.set({ 'n', 'v' }, '<leader>9v', function()
      _99.visual()
    end, { desc = 'Visual 99' })

    vim.keymap.set({ 'n', 'v' }, '<leader>9x', function()
      _99.stop_all_requests()
    end, { desc = 'Stop 99' })

    --- if you have a request you dont want to make any changes, just cancel it
    vim.keymap.set({ 'n', 'v' }, '<leader>9s', function()
      _99.stop_all_requests()
    end, { desc = 'Search 99' })
  end,
}
