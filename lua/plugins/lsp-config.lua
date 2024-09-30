return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pylsp",
          "pyright",
          "lua_ls",
          "gopls",
          "docker_compose_language_service",
          "dockerls",
        },
      })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          "pyright",
          "black",
          "flake8",
          "stylua",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.pylsp.setup({
        capabilities = capabilities,
        plugins = {
          flake8 = { enabled = true },
          pycodestyle = { enabled = false },
          pyflakes = { enabled = false },
          pylint = { enabled = false },
          mccabe = { enabled = false },
        },
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.docker_compose_language_service.setup({
        capabilities = capabilities,
      })
      lspconfig.dockerls.setup({
        capabilities = capabilities,
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
        cmd = { 'gopls' }, on_attach = on_attach,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {desc="Go To Declaration"})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {desc="Go to Definition"})
      vim.keymap.set("n", "gI", vim.lsp.buf.implementation, {desc="Go to Implementation"})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
      -- vim.keymap.set("n", "gr", vim.lsp.buf.references, {})

      vim.keymap.set("n", "<learder>t", vim.diagnostic.open_float)
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
      vim.keymap.set("n", "<leader>o", vim.diagnostic.setloclist)
    end,
  },
}
