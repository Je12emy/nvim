local nvim_lsp = require 'lspconfig'
require('plugins/lsp-kind')

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Enable the following language servers
local lsp_installer = require("nvim-lsp-installer")

-- Original keymaps for reference
-- vim.api.nvim_set_keymap( 'n',   'gd', ':Telescope lsp_definitions<CR>', options)
-- vim.api.nvim_set_keymap( 'n',   'gi', ':Telescope lsp_implementations<CR>', options)
-- vim.api.nvim_set_keymap( 'n',   'gr', ':Telescope lsp_references<CR>', options)
-- vim.api.nvim_set_keymap( 'n',   'ga', ':Telescope lsp_code_actions<CR>', options)
-- vim.api.nvim_set_keymap( 'n',   'gs', ':lua vim.lsp.buf.signature_help()<CR>', options)
-- vim.api.nvim_set_keymap( 'n',   'gr', ':lua vim.lsp.buf.rename()<CR>', options)
-- vim.api.nvim_set_keymap( 'n',   'cd', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', options)
-- vim.api.nvim_set_keymap( 'n',   ']d', ':lua vim.lsp.diagnostic.goto_next()<CR>', options)
-- vim.api.nvim_set_keymap( 'n',   '[d', ':lua vim.lsp.diagnostic.goto_prev()<CR>', options)
-- vim.api.nvim_set_keymap( 'n',   '<Space>cf', ':lua vim.lsp.buf.formatting()<CR>', options)

local function on_attach(client, bufnr)
  -- Set up buffer-local keymaps (vim.api.nvim_buf_set_keymap()), etc.
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
    vim.keymap.set("n", "ga", "<cmd>Telescope lsp_code_actions<CR>", { buffer = 0 })
    vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { buffer = 0 })
    vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { buffer = 0 })
    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.formatting, { buffer = 0 })
    vim.keymap.set("n", "gl", "<cmd>Telescope diagnostics<CR>", { buffer = 0 })
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev , { buffer = 0 })
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next , { buffer = 0 })
end

lsp_installer.on_server_ready(function(server)
    local opts = {
      capabilities = capabilities,
      on_attach = on_attach,
    }
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)
