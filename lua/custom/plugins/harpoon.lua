return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    local harpoon_extensions = require 'harpoon.extensions'
    harpoon:extend(harpoon_extensions.builtins.highlight_current_file())
  end,
  keys = {
    {
      '<leader>p',
      function()
        local harpoon = require 'harpoon'
        harpoon:list():add()
        print('#' .. harpoon:list():length() .. ' Buffie Hooked')
      end,
      desc = 'Hook the buffer',
    },
    {
      '<leader>m',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list(), {
          title = '<<--- HARPOOON --->>',
          title_pos = 'center',
          border = 'rounded',
        })
      end,
      desc = 'Poon menu',
    },
    {
      '<leader>1',
      function()
        require('harpoon'):list():select(1)
      end,
      desc = 'Poon to 1',
    },
    {
      '<leader>2',
      function()
        require('harpoon'):list():select(2)
      end,
      desc = 'Poon to 2',
    },
    {
      '<leader>3',
      function()
        require('harpoon'):list():select(3)
      end,
      desc = 'Poon to 3',
    },
    {
      '<leader>4',
      function()
        require('harpoon'):list():select(4)
      end,
      desc = 'Poon to 4',
    },
    {
      '<leader>5',
      function()
        require('harpoon'):list():select(5)
      end,
      desc = 'Poon to 5',
    },
  },
}
