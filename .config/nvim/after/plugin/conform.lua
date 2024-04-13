require('conform').setup({
  formatters_by_ft = {
    c = {'clang_format'},
    cpp = {'clang_format'},
    javascript = {'prettier'},
    json = {'prettier'},
    nix = {'nixpkgs_fmt'},
    python = {'black'},
    rust = {'rustfmt'},
    typescript = {'prettier'},
  },

  format_on_save = function(bufnr)
    if vim.g.disable_format_on_save then
      return
    end
    return {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_fallback = true,
    }
  end,
})

vim.api.nvim_create_user_command('ConformToggle', function(args)
  vim.g.disable_format_on_save = not vim.g.disable_format_on_save
  vim.api.nvim_echo({{'Format on save '}, {vim.g.disable_format_on_save and 'disabled' or 'enabled'}}, false, {})
end, { desc = 'Toggle format on save' })
