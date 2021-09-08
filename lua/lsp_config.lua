require('lsp/cssls')
require('lsp/dockerls')
require('lsp/rustls')
require('lsp/tailwindls')
require('lsp/tsserver')
require('lsp/sveltels')


local on_attach = require('lsp.on_attach')
-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = { 'markdown', 'plaintext' }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  },
}

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
--local servers = { 'rust_analyzer','tsserver' }
--for _, lsp in ipairs(servers) do
--  nvim_lsp[lsp].setup {
--    on_attach = on_attach,
--    capabilities = capabilities,
--  }
--end

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
