return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,
	},
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
	},
	{
		"shaunsingh/nord.nvim",
		name = "nord",
		priority = 1000,
	},
	{
		"lunarvim/darkplus.nvim",
		name = "darkplus",
		priority = 1000,
	},
	{
		"EtiamNullam/white-chocolate.nvim",
		tag = "v1.1.0",
		config = function()
			require("white-chocolate").setup()
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
		config = function()
			require("onedarkpro").setup({
				colors = {
					-- onedark = { bg = "#1e1e1e" },
				},
				styles = { -- For example, to apply bold and italic, use "bold,italic"
					types = "NONE", -- Style that is applied to types
					methods = "NONE", -- Style that is applied to methods
					numbers = "NONE", -- Style that is applied to numbers
					strings = "NONE", -- Style that is applied to strings
					comments = "NONE", -- Style that is applied to comments
					keywords = "italic", -- Style that is applied to keywords
					constants = "bold", -- Style that is applied to constants
					functions = "bold,italic", -- Style that is applied to functions
					operators = "NONE", -- Style that is applied to operators
					variables = "NONE", -- Style that is applied to variables
					parameters = "italic", -- Style that is applied to parameters
					conditionals = "NONE", -- Style that is applied to conditionals
					virtual_text = "NONE", -- Style that is applied to virtual text
				},
			})
		end,
	},
}
