vim.opt.completeopt = "menuone,noselect"

local cmp = require'cmp'
  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    mapping = {
      ["<S-Tab>"] = cmp.mapping.select_prev_item(),
      ["<Tab>"] = cmp.mapping.select_next_item(),
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
    },
    sources = {
      { name = "nvim_lsp" },
      { name = "nvim_lua" },
    },
formatting = {
  format = function(entry, vim_item)
    -- fancy icons and a name of kind
    vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

    -- set a name for each source
    vim_item.menu = ({
      buffer = "[Buffer]",
      nvim_lsp = "[LSP]",
      nvim_lua = "[Lua]",
    })[entry.source.name]
    return vim_item
  end,
},
  })
