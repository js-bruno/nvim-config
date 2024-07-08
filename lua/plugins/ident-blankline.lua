return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		require("ibl").setup({
			debounce = 100,
			indent = {
        char = "┇",
        smart_indent_cap = true,
        repeat_linebreak = true,
      },
			exclude = { filetypes = { "norg" } },
			whitespace = {
				remove_blankline_trail = false,
			},
			scope = {
				enabled = true,
				show_start = false,
				show_end = false,
        highlight = { "Function", "Label" },
        show_exact_scope = true,
        injected_languages= true,
			},
		})
	end,
}
