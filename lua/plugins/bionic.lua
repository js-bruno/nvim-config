return {
  'HampusHauffman/bionic.nvim',
    enabled=false,
    config = function(_)
      vim.cmd([[
        augroup BionicAutocmd
          autocmd!
          autocmd FileType * Bionic
        augroup END
      ]])
    end
}
