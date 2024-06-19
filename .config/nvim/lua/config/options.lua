-- Visual
vim.opt.cursorline = true
vim.opt.list = true
vim.opt.listchars = 'tab:> ,trail:.'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false

-- Editing
vim.opt.backspace = ''
vim.opt.expandtab = true
vim.opt.mouse = ''
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Diagnostics
vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
})

local signs = {Error = '', Warn = '', Hint = '', Info = ''}
for type, text in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { numhl = hl, text = text, texthl = hl })
end

-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
