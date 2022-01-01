local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg",
        files = { "src/parser.c", "src/scanner.cc" },
        branch = "main"
    },
}

require('nvim-treesitter.configs').setup {
	ensure_installed = { "norg" },
    highlight = { -- Be sure to enable highlights if you haven't!
        enable = true,
    }
}

require('neorg').setup {
    -- Tell Neorg what modules to load
    load = {
        ["core.defaults"] = {}, -- Load all the default modules
        ["core.norg.concealer"] = {
            config = {
                markup = { enable = true },
            }
        }, -- Allows for use of icons
        ["core.norg.dirman"] = { -- Manage your directories with Neorg
            config = {
                workspaces = {
                    my_workspace = "~/wiki/diary"
                }
            }
        },
        ["core.keybinds"] = { -- Configure core.keybinds
              config = {
                  default_keybinds = true, -- Generate the default keybinds
                  neorg_leader = "<Leader>o" -- This is the default if unspecified
              }
        },
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp" -- We current support nvim-compe and nvim-cmp only
            }
        },
        ["core.norg.journal"] = {}
    },
}
