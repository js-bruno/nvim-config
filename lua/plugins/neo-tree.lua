return {
  "nvim-neo-tree/neo-tree.nvim",
  enable=false,
  lazy = true,
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<leader>e', ':Neotree toggle source=filesystem reveal=true position=right<CR>', {})
  end
}
