require("user.keymaps")
require("user.opt")
-- Lazy startup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.cmd("set expandtab ")
vim.cmd("set tabstop =2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")

vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<ESC>", {})

vim.keymap.set("n", "<leader>w", ":w<cr>", {})
vim.keymap.set("n", "<leader>q", ":bd<cr>", {})

vim.keymap.set("n", "<Tab>", ":bnext<CR>", {})
vim.keymap.set("n", "<leader>Tab", ":tabNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", {})

-- Better Navigation though buffers
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

-- Rezise window with arrows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", {})
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", {})
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", {})
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", {})

-- Rezise window with arrows

vim.opt.rtp:prepend(lazypath)
vim.opt.cursorline = true
vim.opt.undofile = true
vim.opt.fileencoding = "utf-8"
vim.opt.timeoutlen = 1000

require("lazy").setup("plugins")

vim.cmd([[
  try
    colorscheme onedark
  catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
  endtry
]])
