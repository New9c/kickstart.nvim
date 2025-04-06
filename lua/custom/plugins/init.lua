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
            '███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗     ██████╗  ██████╗ ██╗  ██╗  ██╗',
            '████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║     ██╔══██╗   ██╔═╝ ██║  ██║  ██║',
            '██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║     ██████╔╝   ██║   ██║  ██║  ██║',
            '██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║     ██╔══██╗   ██║   ╚██╗ ██║ ██╔╝',
            '██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║     ██████╔╝   ██║    ╚████████╔╝ ',
            '╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝     ╚═════╝    ╚═╝     ╚═══════╝  ',
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
          paddings = { 1, 2, 3, 2, 0 },
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
  'edluffy/hologram.nvim',
  { 'habamax/vim-godot', event = 'VimEnter' },
  -- Lazy.nvim setup for nvim-ufo and fold customization
  {
    'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async',
    config = function()
      -- Set options for folding
      vim.o.foldcolumn = '0'
      vim.o.foldlevel = 99 -- feel free to adjust
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      -- Set custom fold icons (like VSCode)
      vim.opt.fillchars = {
        eob = ' ', -- empty lines at the end of buffer
        fold = ' ', -- replace default fold marker
        foldopen = '▾', -- down arrow for open folds
        foldsep = ' ', -- no separator between folds
        foldclose = '▸', -- right arrow for closed folds
      }

      -- Setup nvim-ufo
      require('ufo').setup()
    end,
  },
}
