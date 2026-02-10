return {
  'theprimeagen/99',
  branch = 'master',
  dependencies = { 'hrsh7th/nvim-cmp' }, -- Ensure you have cmp if using the default source
  config = function()
    local _99 = require '99'
    -- For logging that is to a file if you wish to trace through requests
    -- for reporting bugs, i would not rely on this, but instead the provided
    -- logging mechanisms within 99.  This is for more debugging purposes
    _99.setup {
      provider = _99.OpenCodeProvider,
      model = 'opencode/big-pickle',
      completion = {
        source = 'cmp', -- Currently only 'cmp' is supported
        custom_rules = {
          -- "path/to/your/custom/rules/"
        },
      },
      -- Any other required fields
      md_files = { 'AGENT.md' },
    }
    vim.keymap.set({ 'n', 'v' }, '<leader>9', function()
      _99.visual()
    end, { desc = 'Prompt 99' })

    --- if you have a request you dont want to make any changes, just cancel it
    vim.keymap.set({ 'n', 'v' }, '<leader>0', function()
      _99.stop_all_requests()
    end, { desc = 'Stop 99' })
  end,
}
