local load_keymaps = {}

function telescope()
    vim.keymap.set('n', '<leader>f', ":Telescope find_files<cr>", {})
    vim.keymap.set('n', '<c-t>',  ":Telescope live_grep<cr>", {})
end
