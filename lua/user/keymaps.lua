vim.g.mapleader = " "

-- REMAPS
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {})

vim.keymap.set("n", "<Leader>++", "<C-w>|")
vim.keymap.set("n", "<Leader>==", "<C-w>=")

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

vim.keymap.set("n", "<Tab>", ":tabNext<CR>", {})
vim.keymap.set("n", "<leader><Tab>", ":tabnew<CR>", {})
vim.keymap.set("n", "<S-Tab>", ":tabprevious<CR>", {})

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

local keymaps = {}
function keymaps.declareTelescopeKeymaps()
  local mode = "n"

  vim.keymap.set(
    mode,
    "<leader>f",
    "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false, find_command = {'rg', '--files', '--hidden', '-g', '!.git' } }))<cr>",
    { desc = "Open Find_Files telescope with a simple dropdown searcher" }
  )
  -- vim.keymap.set(mode, "<leader>e", ":Telescope buffers initial_mode=normal<cr>", {})

  -- vim.keymap.set(
  --   mode,
  --   "<leader>e",
  --   "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ initial_mode='normal', previewer = false, find_command = {'rg', '--files', '--hidden', '-g', '!.git' } }))<cr>",
  --   { desc = "Open Find_Files telescope with a simple dropdown searcher" }
  -- )
  vim.keymap.set(mode, "<c-t>", ":Telescope live_grep<cr>", {})
  vim.keymap.set(
    mode,
    "<leader>kj",
    "<cmd>lua require'telescope.builtin'.git_status({ initial_mode='normal' })<cr>",
    {}
  )

  vim.keymap.set(
    mode,
    "<leader>kl",
    "<cmd>lua require'telescope.builtin'.git_branches(require('telescope.themes').get_cursor({ initial_mode='insert', previewer = false}))<cr>",
    {}
  )
end

function keymaps.declareLPSKeymaps()
  vim.keymap.set("n", "K", vim.lsp.buf.signature_help, {})
  -- vim.keymap.set("n",, vim.lsp.buf.hover, {})
  -- vim.keymap.set("n", "gb", "<C-^>")
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go To Declaration" })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
  vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Go to Implementation" })
  vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
  vim.keymap.set("n", "ge", vim.lsp.buf.references, {})
  vim.keymap.set("n", "gr", vim.lsp.buf.rename, {})

  vim.keymap.set("n", "<space>bf", vim.lsp.buf.format, {})


  vim.keymap.set("n", "<leader>o", vim.diagnostic.setloclist)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
  -- Format file when saves the documetn
  -- if client.supports_method('textDocument/formatting') then
  --   vim.api.nvim_create_autocmd('BufWritePre', {
  --     buffer = args.buf,
  --     callback = function ()
  --       vim.lsp.buf.format{bufnr = args.buf, id = client.id}
  --     end
  --   })
  -- end

end
return keymaps
