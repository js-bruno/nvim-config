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
      require 'lspconfig'.pylsp.setup {
        settings = {
          pylsp = {
            plugins = {
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

          -- lsp keymaps
          vim.keymap.set("n", "K", vim.lsp.buf.signature_help, {})
          -- vim.keymap.set("n",, vim.lsp.buf.hover, {})
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go To Declaration" })
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
          vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Go to Implementation" })
          vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
          vim.keymap.set("n", "ge", vim.lsp.buf.references, {})
          vim.keymap.set("n", "gr", vim.lsp.buf.rename, {})

          vim.keymap.set("n", "<space>bf", vim.lsp.buf.format, {})


          vim.keymap.set("n", "<leader>o", vim.diagnostic.setloclist)
          vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
          vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
          -- Format file when saves the documetn
          -- if client.supports_method('textDocument/formatting') then
          --   vim.api.nvim_create_autocmd('BufWritePre', {
          --     buffer = args.buf,
          --     callback = function ()
          --       vim.lsp.buf.format{bufnr = args.buf, id = client.id}
          --     end
          --   })
          -- end
        end
      })
    end,
  },
}
