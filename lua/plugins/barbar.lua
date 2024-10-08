return {
  "romgrk/barbar.nvim",
  lazy=false,
  dependencies = {
    "lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
    vim.keymap.set("n", "<leader>be", ":BufferPick<cr>", {})
    vim.keymap.set("n", "<leader>br", ":BufferOrderByBufferNumber<cr>", {})
    vim.keymap.set("n", "<leader>bp", ":BufferPin<cr>", {})
    vim.keymap.set("n", "<leader>b$", ":BufferLast<cr>", {})
    vim.keymap.set("n", "<leader>b0", ":BufferGoto 1<cr>", {})
  end,
  opts = {
    auto_hide = true,
    icons = {
      diagnostics = {
        [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
      },
      gitsigns = {
        added = { enabled = false, icon = "+" },
        changed = { enabled = false, icon = "~" },
        deleted = { enabled = false, icon = "-" },
      },
      filetype = {
        custom_colors = false,
        enabled = true,
      },
      separator = { left = "▎", right = "" },

      -- If true, add an additional separator at the end of the buffer list
      separator_at_end = true,

      -- Configure the icons on the bufferline when modified or pinned.
      -- Supports all the base icon options.
      modified = { button = "●" },
      pinned = { button = "", filename = true },

      -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
      preset = "default",

      alternate = { filetype = { enabled = false } },
      current = {},
      inactive = { button = "×" },
      visible = { modified = { buffer_number = false } },
    },

    -- If true, new buffers will be inserted at the start/end of the list.
    -- Default is to insert after current buffer.
    insert_at_end = false,
    insert_at_start = false,

    -- Sets the maximum padding width with which to surround each tab
    maximum_padding = 1,

    -- Sets the minimum padding width with which to surround each tab
    minimum_padding = 1,

    -- Sets the maximum buffer name length.
    maximum_length = 30,

    -- Sets the minimum buffer name length.
    minimum_length = 0,

    -- If set, the letters for each buffer in buffer-pick mode will be
    -- assigned based on their name. Otherwise or in case all letters are
    -- already assigned, the behavior is to assign letters in order of
    -- usability (see order below)
    semantic_letters = true,

    -- Set the filetypes which barbar will offset itself for
    sidebar_filetypes = {
      -- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
      NvimTree = true,
      -- Or, specify the text used for the offset:
      undotree = {
        text = "undotree",
        align = "center", -- *optionally* specify an alignment (either 'left', 'center', or 'right')
      },
      -- Or, specify the event which the sidebar executes when leaving:
      ["neo-tree"] = { event = "BufWipeout" },
      -- Or, specify all three
      Outline = { event = "BufWinLeave", text = "symbols-outline", align = "right" },
    },
  },
  version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
