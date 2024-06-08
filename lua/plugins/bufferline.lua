return { 
  "akinsho/bufferline.nvim", 
  version = "*", 
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function ()
    vim.keymap.set("n", "<leader>be", ":BufferLinePick<CR>", {})
    -- :BufferLinePickClose<CR>
    require("bufferline").setup{
      options = {
        mode = "buffers",
        style_preset = require("bufferline").style_preset.minimal,
        themable = true,
        indicator = {
            style = 'underline',
        },
        separator_style = "slant" ,
        show_tab_indicators = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline =false,
      }
    }
  end
}
