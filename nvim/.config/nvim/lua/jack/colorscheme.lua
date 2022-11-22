local tokyonight = require("tokyonight")

tokyonight.setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	transparent = true, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
	sidebars = { "qf", "help", "packer" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	dim_inactive = true, -- dims inactive windows
	lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
	on_highlights = function(hl, c)
		hl.TelescopeNormal = {
			fg = c.fg_dark,
		}
		hl.TelescopeBorder = {
			fg = c.bg_dark,
		}
		hl.TelescopePromptNormal = {}
		hl.TelescopePromptBorder = {
			fg = c.bg_dark,
		}
		hl.TelescopePromptTitle = {
			fg = c.fg_dark,
		}
		hl.TelescopePreviewTitle = {
			fg = c.fg_dark,
		}
		hl.TelescopeResultsTitle = {
			fg = c.fg_dark,
		}
	end,
})

vim.cmd([[colorscheme tokyonight]])
