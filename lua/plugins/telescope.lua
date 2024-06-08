return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
      local builtin = require('telescope.builtin')
			vim.keymap.set("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", {})
			vim.keymap.set("n", "<leader>e", ":Telescope buffers initial_mode=normal<cr>", {})
			vim.keymap.set("n", "<c-t>", ":Telescope live_grep<cr>", {})
			-- vim.keymap.set("n", "<leader>pf", function ()
   --         builtin.grep_string({ search = vim.fn.input("Grep > ")})
			-- end, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
          hidden = true,
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
