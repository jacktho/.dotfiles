local nvimTree = require("nvim-tree")

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#E97207 ]])

local customMappings = {
	{ key = "h", action = "close_node" },
	{ key = "l", action = "edit" },
}

nvimTree.setup({
	view = {
		adaptive_size = true,
		mappings = {
			custom_only = false,
			list = customMappings,
		},
	},
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "",
					arrow_open = "",
				},
			},
		},
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
