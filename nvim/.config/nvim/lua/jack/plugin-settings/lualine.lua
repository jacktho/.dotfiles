local lualine = require("lualine")

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "tokyonight",
	},
	sections = {
		lualine_c = { "%{expand('%:p:h:t')}/%t" },
	},
	inactive_sections = {
		lualine_c = { "%{expand('%:p:h:t')}/%t" },
	},
})
