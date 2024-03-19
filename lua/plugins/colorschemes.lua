return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme "catppuccin"
		end,
	},
	{
		"uloco/bluloco.nvim",
		name = "bluloco",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			--vim.cmd.colorscheme("bluloco")
		end,
	},
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,
		config = function()
      --vim.cmd.colorscheme("bluloco")
		end,
	},
	{

		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme "kanagawa"
		end,
	},
}
