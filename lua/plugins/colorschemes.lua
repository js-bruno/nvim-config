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
			-- vim.cmd.colorscheme("sonokai")
		end,
	},
	{

		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme "kanagawa"
		end,
	},
	{
		"shaunsingh/nord.nvim",
		name = "nord",
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme "nord"
		end,
	},
{
	{
		"ribru17/bamboo.nvim",
		lazy = false,
		priority = 1000,
		config = function()
		-- 	require("bamboo").setup({
		-- 		-- optional configuration here
		-- 	})
		-- 	require("bamboo").load()
		end,
	},
  { "lunarvim/darkplus.nvim",
		name = "darkplus",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme "darkplus"
		end,
    },
	},
}
