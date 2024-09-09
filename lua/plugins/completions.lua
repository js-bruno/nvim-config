return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
      "L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
      "lukas-reineke/cmp-under-comparator",
      "hrsh7th/cmp-nvim-lsp",
		},
		config = function()

			--   פּ ﯟ   some other good icons
			local kind_icons = {
				Text = "󰊄",
				Method = "m",
				Function = "󰊕",
				Constructor = "",
				Field = "",
				Variable = "󰫧",
				Class = "",
				Interface = "",
				Module = "",
				Property = "",
				Unit = "",
				Value = "",
				Enum = "",
				Keyword = "󰌆",
				Snippet = "",
				Color = "",
				File = "",
				Reference = "",
				Folder = "",
				EnumMember = "",
				Constant = "",
				Struct = "",
				Event = "",
				Operator = "",
				TypeParameter = "󰉺",
			}

			local cmp = require("cmp")
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			-- If you want insert `(` after select function or method item
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
			cmp.setup({
				sorting = {
					comparators = {
						cmp.config.compare.offset,
						cmp.config.compare.exact,
						cmp.config.compare.score,
						require("cmp-under-comparator").under,
						cmp.config.compare.kind,
						cmp.config.compare.sort_text,
						cmp.config.compare.length,
						cmp.config.compare.order,
					},
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered({
						border = "double",
						winhighlight = "Normal:Pmenu,FloatBorder:PMenu,Cursorline:PmenuThumb,Search:None",
					}),
					documentation = cmp.config.window.bordered(),
				},

				mapping = cmp.mapping.preset.insert({
					["<C-k>"] = cmp.mapping.select_prev_item(),
					["<C-j>"] = cmp.mapping.select_next_item(),
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),

					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
					["<C-e>"] = cmp.mapping({
						i = cmp.mapping.abort(),
						c = cmp.mapping.close(),
					}),
				}),
				formatting = {
					format = function(entry, vim_item)
						-- Kind icons
						-- vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
						vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
						vim_item.menu = ({
							nvim_lsp = "[LSP]",
							luasnip = "[Snippet]",
							buffer = "[Buffer]",
							path = "[Path]",
						})[entry.source.name]
						return vim_item
					end,
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp", keyword_length = 3 },
					{ name = "buffer" },
					{ name = "luasnip" },
				}, {
				}),
			})
		end,
	},
}
