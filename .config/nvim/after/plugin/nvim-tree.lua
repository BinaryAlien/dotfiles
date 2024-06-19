require('nvim-tree').setup({
  view = {
    side = 'right',
    number = true,
    relativenumber = true,
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
  },
  git = {
    enable = false,
  },
  actions = {
    open_file = {
      resize_window = false,
    },
  },
  tab = {
    sync = {
      open = true,
      close = true,
    },
  },
})

local api = require('nvim-tree.api')
vim.keymap.set('n', '<Leader>t', api.tree.toggle, {})
