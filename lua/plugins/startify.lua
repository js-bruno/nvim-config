return {
	"mhinz/vim-startify",

	config = function()
		local statusline = require("statusline")
		statusline.tabline = false
	end,
}
