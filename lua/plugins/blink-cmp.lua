return {
  'saghen/blink.cmp',
  -- dependencies = 'rafamadriz/friendly-snippets',
  dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },



  signature = { enabled = true },
  snippets = { preset = 'luasnip' },
  version = '*',
  ---
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' for mappings similar to built-in completion
    -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
    -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
    -- See the full "keymap" documentation for information on defining your own keymap.
    keymap = {
      preset = 'super-tab',
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<C-k>'] = { 'select_prev', 'fallback' },
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
        luasnip = {
          name = "luasnip",
          enabled = true,
          module = "blink.cmp.sources.lsp",
          score_offset = 950
        }
      }
    },
  },

  opts_extend = { "sources.default" }
}
