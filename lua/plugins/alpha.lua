return {
	"goolord/alpha-nvim",

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
			[[  ______    __                   ___                                    __      _            __ ]],
			[[ /_  __/   / /_   ___           /   |   ____   ____ _   _____  _____   / /_    (_)   _____  / /_]],
			[[  / /     / __ \ / _ \         / /| |  / __ \ / __ `/  / ___/ / ___/  / __ \  / /   / ___/ / __/ ]],
			[[ / /     / / / //  __/        / ___ | / / / // /_/ /  / /    / /__   / / / / / /   (__  ) / /_  ]],
			[[/_/     /_/ /_/ \___/        /_/  |_|/_/ /_/ \__,_/  /_/     \___/  /_/ /_/ /_/   /____/  \__/  ]],
      [[                                                                                                ]],
      [[                                                                                                ]],
      [[                                                                                                ]],
      [[                                                                                                ]],
      [[                                                                                                ]],
      [[                                                                                                ]],
      [[                                                                                                ]],
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
