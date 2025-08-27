return {
  {
    '3rd/image.nvim',
    build = false,
    opts = {
      processor = 'magick_cli',
    },
    integrations = {
      html = {
        enabled = true,
      },
      css = {
        enabled = true,
      },
    },
  },
}
