local options = {
  expandtab = true,
  tabstop =  2,
  softtabstop=2,
  shiftwidth=2,
  clipboard="unnamedplus",
}


for set, value in pairs(options) do
  vim.opt[set] = value
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
