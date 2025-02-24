return {
  'saghen/blink.cmp',
  -- dependencies = 'rafamadriz/friendly-snippets',
  dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },


  signature = { enabled = true },
  snippets = { preset = 'luasnip' },
  version = '*',
  ---
  ---@module 'blink.cmp'cmp
  ---@type blink.cmp.Config
  opts = {
    completion = {
      ghost_text = {enabled = true },
      -- menu = {
      --   draw = {
      --     components = {
      --       kind_icon = {
      --         ellipsis = false,
      --         text = function(ctx)
      --           local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
      --           return kind_icon
      --         end,
      --         -- Optionally, you may also use the highlights from mini.icons
      --         highlight = function(ctx)
      --           local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
      --           return hl
      --         end,
      --       }
      --     }
      --   }
      -- }
    },
    -- 'default' for mappings similar to built-in completion
    -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
    -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
    -- See the full "keymap" documentation for information on defining your own keymap.
    keymap = {
      preset = 'super-tab',
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<C-k>'] = { 'select_prev', 'fallback' },
      ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ['<C-e>'] = { 'hide' },
    },
    appearance = {
      -- Sets the fallback highlight groups to nvim-cmp's highlight groups
      -- Useful for when your theme doesn't support blink.cmp
      -- Will be removed in a future release
      use_nvim_cmp_as_default = true,
      -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'luasnip', 'buffer' },
      providers = {
        path = {
          opts = { get_cwd = vim.uv.cwd },
        },
        luasnip = {
          name = "luasnip",
          enabled = true,
          module = "blink.cmp.sources.lsp",
          score_offset = 950
        },
        -- buffer = {
        --   fallback_for = {}, -- disable being fallback for LSP
        --   max_items = 4,
        --   min_keyword_length = 4,
        --   score_offset = -3,
        -- },
      }
    },
  },

  opts_extend = { "sources.default" }
}
