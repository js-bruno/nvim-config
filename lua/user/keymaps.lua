vim.g.mapleader = " "

-- REMAPS
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

-- vim.keymap.set("n", "<Tab>", ":bnext<CR>", {})
vim.keymap.set("n", "<Tab>", ":bnext<CR>", {})
vim.keymap.set("n", "<S-Tab>", ":tabNext<CR>", {})
vim.keymap.set("n", "<leader><Tab>", ":tabnew<CR>", {})
-- vim.keymap.set("n", "<S-Tab>", ":tabprevious<CR>", {})
-- vim.keymap.set("n", "<Tab>", ":tabNext<CR>", {})

vim.keymap.set("n", "<leader>v", ":vsplit<cr>", {})

-- Better Navigation though buffers
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

vim.keymap.set("n", "<C-h>", ":windcmd h<CR>", {})
vim.keymap.set("n", "<C-j>", ":windcmd j<CR>", {})
vim.keymap.set("n", "<C-k>", ":windcmd k<CR>", {})
vim.keymap.set("n", "<C-l>", ":windcmd l<CR>", {})

-- Rezise window with arrows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", {})
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", {})
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", {})
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", {})
