local on_attach = require('lsp.on_attach')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

--npm i -g vscode-langservers-extracted
require'lspconfig'.cssls.setup{
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    on_attach(client)
  end
}
