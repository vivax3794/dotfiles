vim.opt.cmdheight = 0

local theme = require("lualine.themes.tokyonight")

require("lualine").setup {
	options = {
		theme = theme,
		component_separators = ""
	},
	sections = {
		lualine_a = {
			{"mode", separator = {left = ""}}
		},
		lualine_b = {
			{"diagnostics", update_in_insert = true}
		, "filename"},
		lualine_c = {"searchcount", "selectioncount"},
		lualine_x = {"diff"},
		lualine_y = {"filetype"},
		lualine_z = {
			{"location", separator = {right = ""}}
		}
	}
}
