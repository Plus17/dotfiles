local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'sumneko_lua',
})

-- Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
