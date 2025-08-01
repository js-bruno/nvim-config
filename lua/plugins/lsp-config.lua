local keymaps = require 'user.keymaps'
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      local init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
          css = true,
          javascript = true
        },
        provideFormatter = true
      }
      require("lspconfig").html.setup { capabilities = capabilities, init_options = init_options }
      require("lspconfig").lua_ls.setup {}
      require("lspconfig").gopls.setup {}
      vim.lsp.enable('gopls')
      -- require 'lspconfig'.pyright.setup {}
      -- vim.lsp.enable('basedpyright')
      require'lspconfig'.volar.setup{
        filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
      }
      require'lspconfig'.ts_ls.setup{}
      -- require 'lspconfig'.pyrigh.setup {
      require 'lspconfig'.pylsp.setup {
        settings = {
          pylsp = {
            plugins = {
              mypy = {
                enabled= false,
              },
              pycodestyle = {
                ignore = { 'W391' },
                maxLineLength = 100
              }
            }
          }
        }
      }

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end

          keymaps.declareLPSKeymaps()
        end
      })
    end,
  },
}
