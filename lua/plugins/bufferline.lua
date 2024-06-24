return { 
  "akinsho/bufferline.nvim", 
  version = "*", 
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function ()
    vim.keymap.set("n", "<leader>be", ":BufferLinePick<CR>", {})
    -- :BufferLinePickClose<CR>
    local bufferline = require("bufferline")
    bufferline.setup{
      options = {
        mode = "buffers",
        style_preset  = {
            bufferline.style_preset.no_italic,
            bufferline.style_preset.no_bold
        },
        themable = true,
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'underline',
        },
        separator_style = "thick" ,
        show_tab_indicators = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline =false,
      }
    }
  end
}
