require('nvim-tree').setup()

local api = require('nvim-tree.api')
vim.keymap.set('n', '<Leader>t', api.tree.toggle, {})
