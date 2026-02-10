return {
  'New9c/floaterm',
  branch = 'current',
  dependencies = 'nvzone/volt',
  opts = {
    border = true,
    size = { h = 60, w = 70 },

    -- to use, make this func(buf)
    mappings = { sidebar = nil, term = nil },

    -- Default sets of terminals you'd like to open
    terminals = {
      { name = 'Current' },
      { name = 'Base' },
    },
  },
  cmd = 'FloatermToggle',
}
