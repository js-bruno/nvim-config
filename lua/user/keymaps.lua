vim.g.mapleader = " "

-- REMAPS
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {})

vim.keymap.set("n", "J", "mzJ`z", {})
vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})
vim.keymap.set("n", "n", "nzzzv", {})
vim.keymap.set("n", "N", "Nzzzv", {})


vim.keymap.set("x", "<leader>p", "\"_dP", {})
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("i", "jk", "<ESC>", {})

vim.keymap.set("n", "<leader>w", ":w<cr>", {})
vim.keymap.set("n", "<leader>q", ":bd<cr>", {})

vim.keymap.set("n", "<Tab>", ":bnext<CR>", {})
vim.keymap.set("n", "<leader>Tab", ":tabNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", {})

vim.keymap.set("n", "<leader>v", ":vsplit<cr>", {})

vim.keymap.set("n", "<C-h>", ":windcmd h<CR>", {})
vim.keymap.set("n", "<C-j>", ":windcmd j<CR>", {})
vim.keymap.set("n", "<C-k>", ":windcmd k<CR>", {})
vim.keymap.set("n", "<C-l>", ":windcmd l<CR>", {})

-- rezise window with arrows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", {})
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", {})
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", {})
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", {})

vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>")
