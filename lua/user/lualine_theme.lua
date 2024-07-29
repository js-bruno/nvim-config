local colors = {
	color19 = "#8FBCBB",
	color18 = "#b8cc52",
	color10 = "#f07178",
	color11 = "#3e4b59",
	color12 = "#e6e1cf",
	color13 = "#1E1E1E",
	color4 = "#1E1E1E",
	color5 = "#ffee99",
}

return {
	normal = {
		b = { fg = colors.color12, bg = colors.color13 },
		c = { fg = colors.color11, bg = colors.color4 },
		a = { fg = colors.color4, bg = colors.color19, "bold" },
	},
	insert = {
		a = { fg = colors.color4, bg = colors.color18, "bold" },
	},
	visual = {
		a = { fg = colors.color4, bg = colors.color5, "bold" },
	},
	replace = {
		a = { fg = colors.color4, bg = colors.color10, "bold" },
	},
	command = {
		a = { bg = colors.green, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.inactivegray, fg = colors.black },
	},
	inactive = {
		b = { fg = colors.color11, bg = colors.color4 },
		c = { fg = colors.color12, bg = colors.color4 },
		a = { fg = colors.color12, bg = colors.color13, "bold" },
	},
}
