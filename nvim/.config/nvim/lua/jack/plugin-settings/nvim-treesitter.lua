local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
	-- One of "all", "maintained" (parsers with maintainers), or a list of languages
	ensure_installed = {
		"svelte",
		"javascript",
		"comment",
		"dockerfile",
		"css",
		"graphql",
		"html",
		"json",
		"bash",
		"markdown",
		"tsx",
		"lua",
		"make",
		"typescript",
		"yaml",
		"vim",
	},
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
})
