return {
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
}
