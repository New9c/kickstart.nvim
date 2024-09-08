-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'startup-nvim/startup.nvim',
    requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      require('startup').setup {
        header = {
          type = 'text',
          oldfiles_directory = false,
          align = 'center',
          fold_section = false,
          title = 'Header',
          margin = 5,
          content = {
            ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗     ██████╗  ██████╗ ██╗  ██╗  ██╗',
            ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║     ██╔══██╗   ██╔═╝ ██║  ██║  ██║',
            ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║     ██████╔╝   ██║   ██║  ██║  ██║',
            ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║     ██╔══██╗   ██║   ╚██╗ ██║ ██╔╝',
            ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║     ██████╔╝   ██║    ╚████████╔╝ ',
            ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝     ╚═════╝    ╚═╝     ╚═══════╝  ',
          },
          highlight = 'String',
          default_color = '',
          oldfiles_amount = 0,
        },
        -- name which will be displayed and command
        header_2 = {
          type = 'text',
          oldfiles_directory = false,
          align = 'center',
          fold_section = false,
          title = 'Quote',
          margin = 5,
          content = require('startup.functions').quote(),
          highlight = 'String',
          default_color = '',
          oldfiles_amount = 0,
        },
        logo = {
          type = 'text',
          align = 'center',
          fold_section = false,
          title = 'Header',
          margin = 5,
          content = require('startup.headers').hydra_header,
          highlight = 'Statement',
          default_color = '',
          oldfiles_amount = 0,
        },
        footer = {
          type = 'text',
          oldfiles_directory = false,
          align = 'center',
          fold_section = false,
          title = 'Footer',
          margin = 5,
          content = { 'Made with startup.nvim :D' },
          highlight = 'Number',
          default_color = '',
          oldfiles_amount = 0,
        },

        options = {
          mapping_keys = false,
          cursor_column = 0.5,
          empty_lines_between_mappings = true,
          disable_statuslines = true,
          paddings = { 1, 2, 5, 2, 0 },
        },
        mappings = {
          execute_command = '<CR>',
          open_file = 'o',
          open_file_split = '<c-o>',
          open_section = '<TAB>',
          open_help = '?',
        },
        colors = {
          background = '#1f2227',
          folded_section = '#56b6c2',
        },
        parts = { 'header', 'header_2', 'logo', 'footer' },
      }
    end,
  },
  {
    'rcarriga/nvim-notify',
    opts = {
      render = 'compact',
      stages = 'fade_in_slide_out',
      timeout = 2000,
      top_down = false,
    },
  },
  {
    'kawre/leetcode.nvim',

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
      image_support = false,
      lang = 'python3',
    },
  },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "n", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "<leader>i", mode = { "n", "x", "o" }, function()
        require("flash").jump({
        search = { mode = "search", max_length = 0 },
        label = { after = { 0, 0 } },
        pattern = "^"
      }) end, desc = "Line Jumper" },
    },
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  },
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
    keys = {
      { '<leader>o', ':NvimTreeToggle<CR>', mode = 'n', silent = true, desc = 'File tree' },
    },
  },
  'edluffy/hologram.nvim',
  { 'habamax/vim-godot', event = 'VimEnter' },
  {
    'ThePrimeagen/vim-be-good',
    keys = {
      { '<leader>v', ':VimBeGood<CR>', mode = 'n', silent = true, noremap = true, desc = 'Start VimBeGood' },
    },
  },
}
