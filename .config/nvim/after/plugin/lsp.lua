local lsp_zero = require('lsp-zero')
local lsp_signature = require('lsp_signature')
local lsp_signature_config = {bind = true, hint_prefix = ""}

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
  lsp_signature.on_attach(lsp_signature_config, bufnr)
end)

lsp_zero.setup_servers({'ccls', 'nil_ls', 'pyright', 'tsserver'})
lsp_signature.setup(lsp_signature_config)

require('lspconfig').rust_analyzer.setup({
  settings = {
    ['rust-analyzer'] = {
      check = {
        command = 'clippy',
      },
    },
  },
})
