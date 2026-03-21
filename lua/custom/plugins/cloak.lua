--[[
return {
  'laytan/cloak.nvim',
  config = function()
    require('cloak').setup {
      enabled = true,
      cloak_character = '*',
      -- cloak_length = 1,
      -- The patterns to cloak. This is the default:
      patterns = {
        {
          -- Match any file starting with '.env'
          file_pattern = '.env*',
          -- Match an equals sign and everything after it.
          cloak_pattern = '=(.+)',
        },
      },
    }
  end,
}
]]
return {
  'ph1losof/shelter.nvim',
  lazy = false,
  config = function()
    require('shelter').setup {
      modules = {
        files = true,
        telescope_previewer = true,
      },
      env_filetypes = { '.env*', 'dotenv', 'edf', 'sh', 'conf' },
    }
  end,
}
