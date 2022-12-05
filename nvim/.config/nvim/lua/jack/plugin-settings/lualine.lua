local lualine = require("lualine")

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "tokyonight",
	},
	sections = {
		lualine_c = {
			{
				"filename",
				file_status = true,
				path = 1,
				shorting_target = 110,
			},
		},
	},
	inactive_sections = {
		lualine_c = { { "filename", path = 1 } },
	},
})
