return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			vim.keymap.set(
				"n",
				"<leader>f",
				"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false, find_command = {'rg', '--files', '--hidden', '-g', '!.git' } }))<cr>",
				{}
			)
			-- vim.keymap.set("n", "<leader>e", ":Telescope buffers initial_mode=normal<cr>", {})
			vim.keymap.set(
				"n",
				"<leader>e",
				"<cmd>lua require'telescope.builtin'.buffers({ initial_mode='normal' })<cr>",
				{}
			)
			vim.keymap.set("n", "<c-t>", ":Telescope live_grep<cr>", {})
			vim.keymap.set(
				"n",
				"<leader>kj",
				"<cmd>lua require'telescope.builtin'.git_status({ initial_mode='normal' })<cr>",
				{}
			)

			vim.keymap.set(
				"n",
				"<leader>kl",
				"<cmd>lua require'telescope.builtin'.git_branches(require('telescope.themes').get_cursor({ initial_mode='insert', previewer = false}))<cr>",
				{}
			)
			-- vim.keymap.set(
			-- 	"n",
			-- 	"<leader>gr",
			-- 	"<cmd>lua require'telescope.builtin'.lsp_references(require('telescope.themes').get_dropdown({ initial_mode='normal', previewer = true}))<cr>",
			-- 	{}
			-- )
			-- vim.keymap.set("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", {})
			-- vim.keymap.set("n", "<leader>pf", function () builtin.grep_string({ search = vim.fn.input("Grep > ")}) end, {})

			require("telescope").setup({
				pickers = {
					lsp_references = {
						show_line = false,
					},
					buffers = {
						layout_config = {
							horizontal = {
								height = 0.6,
								preview_cutoff = 120,
								preview_width = 0.4,
								prompt_position = "top",
								mirror = true,
								width = 0.9,
							},
						},
						mappings = {
							n = {
								["x"] = "delete_buffer",
							},
						},
					},
					find_files = {
						mappings = {
							n = {
								-- ["jk"] = "close",
							},
						},
						layout_config = {
							bottom_pane = {
							  height = 25,
							  preview_cutoff = 120,
							  prompt_position = "top"
							},
							center = {
							  height = 0.4,
							  preview_cutoff = 40,
							  prompt_position = "top",
							  width = 0.5
							},
							cursor = {
							  height = 0.9,
							  preview_cutoff = 40,
							  width = 0.8
							},
							horizontal = {
								height = 0.7,
								preview_cutoff = 120,
								preview_width = 0.7,
								prompt_position = "top",
								mirror = true,
								width = 0.9,
							},
							-- vertical = {
							--   height = 0.9,
							--   preview_cutoff = 40,
							--
							--   prompt_position = "bottom",
							--   width = 0.8
							-- }
						},
					},
					git_status = {
						-- mappings = {
						--   n = {
						--     ["jk"] = "close",
						--   },
						-- },
						layout_config = {
							-- bottom_pane = {
							--   height = 25,
							--   preview_cutoff = 120,
							--   prompt_position = "top"
							-- },
							-- center = {
							--   height = 0.4,
							--   preview_cutoff = 40,
							--   prompt_position = "top",
							--   width = 0.5
							-- },
							-- cursor = {
							--   height = 0.9,
							--   preview_cutoff = 40,
							--   width = 0.8
							-- },
							horizontal = {
								height = 0.7,
								preview_cutoff = 120,
								preview_width = 0.7,
								prompt_position = "top",
								mirror = true,
								width = 0.9,
							},
							-- vertical = {
							--   height = 0.9,
							--   preview_cutoff = 40,
							--
							--   prompt_position = "bottom",
							--   width = 0.8
							-- }
						},
					},
				},
			})
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
