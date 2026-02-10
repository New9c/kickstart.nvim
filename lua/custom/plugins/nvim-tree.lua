return {
  --[[
  {
    'nvim-tree/nvim-tree.lua',
    opts = {
      on_attach = function(bufnr)
        local api = require 'nvim-tree.api'
        local function opts(desc)
          return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end
        -- default mappings
        api.config.mappings.default_on_attach(bufnr)
        -- custom mappings
        vim.keymap.set('n', '<CR>', api.tree.change_root_to_node, opts 'CD')
        vim.keymap.set('n', "'", api.tree.change_root_to_parent, opts 'Up')
      end,
      view = {
        side = 'right',
      },
    },
  },
]]
  --
}
