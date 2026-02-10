return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2', -- Since you're using the Harpoon 2 syntax (:list(), etc.)
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>r', function()
      harpoon:list():add()
      print('#' .. harpoon:list():length() .. ' Buffie Hooked')
    end, { desc = 'Hook the buffer' })
    vim.keymap.set('n', '<leader>m', function()
      harpoon.ui:toggle_quick_menu(harpoon:list(), {
        title = '<<--- HARPOOON --->>',
        title_pos = 'center',
        border = 'rounded',
      })
    end, { desc = 'Poon menu' })
    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end, { desc = 'Poon to 1' })
    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end, { desc = 'Poon to 2' })
    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end, { desc = 'Poon to 3' })
    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end, { desc = 'Poon to 4' })
    vim.keymap.set('n', '<leader>5', function()
      harpoon:list():select(5)
    end, { desc = 'Poon to 5' })

    local harpoon_extensions = require 'harpoon.extensions'
    harpoon:extend(harpoon_extensions.builtins.highlight_current_file())
  end,
}
