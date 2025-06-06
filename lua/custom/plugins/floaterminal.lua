-- ~/.config/nvim/lua/plugins/floaterminal.lua
return {
  'nvim-lua/plenary.nvim', -- dummy plugin, required for Lazy to accept the file
  name = 'floaterminal',
  dev = { true },
  config = function()
    local state = {
      floating = {
        buf = -1,
        win = -1,
      },
    }

    local function open_centered_floating_window(opts)
      opts = opts or {}
      local width = math.floor(vim.o.columns * 0.8)
      local height = math.floor(vim.o.lines * 0.8)
      local col = math.floor((vim.o.columns - width) / 2)
      local row = math.floor((vim.o.lines - height) / 2)

      local buf = nil
      if vim.api.nvim_buf_is_valid(opts.buf) then
        buf = opts.buf
      else
        buf = vim.api.nvim_create_buf(false, true)
      end

      local win = vim.api.nvim_open_win(buf, true, {
        relative = 'editor',
        width = width,
        height = height,
        col = col,
        row = row,
        style = 'minimal',
        border = 'rounded',
      })
      return { buf = buf, win = win }
    end

    local toggle_floaterminal = function()
      if not vim.api.nvim_win_is_valid(state.floating.win) then
        state.floating = open_centered_floating_window { buf = state.floating.buf }
        if vim.bo[state.floating.buf].buftype ~= 'terminal' then
          vim.cmd.terminal()
          -- vim.api.nvim_chan_send(vim.bo[state.floating.buf].channel, 'clear\n')
        end
        vim.cmd 'startinsert'
      else
        vim.api.nvim_win_hide(state.floating.win)
      end
    end
    vim.api.nvim_create_user_command('Floaterminal', toggle_floaterminal, {})
    vim.keymap.set({ 'n', 't' }, '<space>tt', toggle_floaterminal)
  end,
}
