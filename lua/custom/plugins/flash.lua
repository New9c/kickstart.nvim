return {
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "n", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "/", mode = { "n", "x", "o" }, function()
        require("flash").jump({
        search = { mode = "search", max_length = 0 },
        label = { after = { 0, 0 } },
        pattern = "^"
      }) end, desc = "Line Jumper" },
    },
  },
}
