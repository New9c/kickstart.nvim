return {
  --[[
  {
    'paradoxical-dev/neollama',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('neollama').setup {
        -- config goes here
      }
      -- Initialization keymaps will be set externally
      vim.api.nvim_set_keymap('n', '<leader>cc', '<cmd>lua require("neollama").initialize()<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('v', '<leader>c', '<cmd>lua require("neollama").initialize()<CR>', { noremap = true, silent = true })
    end,
  },
  ]]
  --
}
