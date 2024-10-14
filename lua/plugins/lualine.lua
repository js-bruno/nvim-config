return {
	"nvim-lualine/lualine.nvim",
  lazy=false,
  enabled=true,
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
    local custom_lualine_theme = require('user.lualine_theme')
		require("lualine").setup({
			options = {
				theme = custom_lualine_theme,
				component_separators = "",
				section_separators = { left = "", right = "" },
        globalstatus = true,
      },
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, padding = 1 } },
				lualine_b = { "branch" },
				lualine_c = {
					"%=", --[[ add your center compoentnts here in place of this comment ]]
				},
				lualine_x = {},
				lualine_y = { "filetype", "filename", "progress" },
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			extensions = {},
		})

    -- vim.cmd("set laststatus=0")
    -- vim.cmd("hi! link StatusLine Normal")
    -- vim.cmd("hi! link StatusLineNC Normal")
    -- vim.cmd("set statusline=%{repeat('─',winwidth('.'))}")
	end,
}
