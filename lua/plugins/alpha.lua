return {
	"goolord/alpha-nvim",

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠻⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠇⠀⢻⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠲⣶⣶⣶⣶⣶⣶⣶⣾⡿⠀⠀⠈⣿⣶⣶⣶⣶⣶⣶⣶⡶⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣦⡄⠀⠀⠀⠀⠀⢠⣶⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡿⠀⠀⠀⡀⠀⠀⠘⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠀⠀⠀⠀⠀⠀⠀⢀⣿⠃⢀⣴⡾⠿⣷⣄⡀⢹⣷⠀⠀⠀⠀⠀⠀⠀⢦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⢀⣀⣴⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣶⠟⠋⠀⠀⠈⠙⢿⣶⣿⣇⠀⠀⠀⠀⠀⠀⠀⠙⢿⣶⣄⣀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⣠⡾⢹⣿⠟⡅⠀⠀⠀⠀⠀⠀⠀⠀⣰⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⡄⠀⠀⠀⠀⠀⠀⠀⢨⡻⣿⡎⢿⣆⠀⠀⠀⠀]],
			[[⠀⠀⢀⢶⣿⠇⣟⣥⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠲⢤⣄⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⢻⣮⣻⠸⣿⡷⣄⠀⠀]],
			[[⠀⢠⡟⢸⣿⣴⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣶⣿⡇⢹⡄⠀]],
			[[⠀⣾⣷⢸⡿⣋⣴⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⣄⣀⠀⠀⠀⠀⠈⢿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⣍⢻⡇⣿⣷⠀]],
			[[⠀⣿⣿⠘⣷⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠹⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣷⡀⣿⣿⢀]],
			[[⣧⠸⣿⣼⡿⣣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⣌⠻⣿⣿⠇⣼]],
			[[⣿⡆⢹⡟⣰⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⠟⠉⠙⢿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢹⣦⠹⡿⢠⣿]],
			[[⢻⣿⡄⢰⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠹⣿⣷⣦⡀⠀⠀⠀⠀⠀⣸⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⣿⣧⢀⣿⡟]],
			[[⡌⢿⣷⣾⡿⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣦⡀⠀⠀⠀⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⣏⢹⣿⣾⡿⢁]],
			[[⣷⡌⢻⣿⡇⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣦⣀⣼⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⢰⣿⠀⣿⠟⢡⣾]],
			[[⠘⣿⣦⡙⠃⣿⡇⡀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡿⢿⣿⣶⣤⣀⣀⠀⠀⠀⣈⣻⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⢀⢸⣿⠀⢫⣴⣿⠃]],
			[[⠀⢸⣿⣿⣦⣿⣇⢸⣆⠀⠀⠀⠀⢀⣠⣾⡿⠉⠁⠀⠈⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⣰⡏⢸⣿⣴⣿⠟⡁⠀]],
			[[⠀⠈⢧⣉⠻⢿⣿⠀⣿⣆⠀⠀⢠⣾⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠛⠋⠉⠉⠻⣿⣿⡆⠀⠀⠀⣰⣿⠁⣾⡿⠟⣡⡼⠁⠀]],
			[[⠀⠀⠈⠻⣷⣤⣙⠃⢹⣿⡖⣄⡀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⣠⢲⣿⡟⢈⣩⣴⣾⠟⠁⠀⠀]],
			[[⠀⠀⠀⠀⠈⢻⣿⣿⣦⣿⣿⡌⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⢃⣾⣿⣶⣿⡿⡟⠁⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠈⠳⣬⣉⣙⣛⠛⠎⠻⢿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⠟⣁⣚⣛⣉⣩⣤⠞⠁⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠈⠙⢻⡿⣿⣿⡿⠿⠿⠟⢛⣩⣤⣶⡶⠖⣲⣶⢶⣶⡚⠶⣶⣶⣮⣙⡛⠻⠿⠿⠿⠿⠿⡟⠋⠁⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢶⣤⣤⣴⣶⣾⣿⡿⠟⣉⣴⠟⠉⠀⠀⠈⠻⢷⣌⡙⠿⣿⣿⣷⣶⣶⣶⡶⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠠⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠙⢿⡦⠀⠈⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
			dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>"),
			dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
		}

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
