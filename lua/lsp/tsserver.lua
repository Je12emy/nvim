local on_attach = require('lsp.on_attach')

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup({
  on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = true
    on_attach(client)

    require'nvim-lsp-ts-utils'.setup {}
  end
})

