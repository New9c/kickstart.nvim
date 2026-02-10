return {
  {
    '3rd/image.nvim',
    build = false,
    opts = {
      processor = 'magick_cli',
      hijack_file_patterns = { '*.png', '*.jpg', '*.svg', '*.webp' },
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
