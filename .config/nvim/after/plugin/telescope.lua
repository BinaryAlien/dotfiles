local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Leader>E', builtin.find_files, {})
vim.keymap.set('n', '<Leader>b', builtin.buffers, {})
vim.keymap.set('n', '<Leader>e', builtin.git_files, {})
vim.keymap.set('n', '<Leader>g', builtin.live_grep, {})
