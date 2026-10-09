local p = require("oldworld.palette")
local u = require("oldworld.utils.color_utils")
local is_light = require("oldworld.config").variant == "light"

return {
	SnacksIndent = { fg = p.gray3 },
	SnacksIndentScope = { fg = p.subtext4 },
	SnacksDashboardHeader = { fg = p.purple },
	SnacksDashboardDesc = { fg = p.subtext1 },
	SnacksDashboardKey = { fg = p.magenta, bold = true },
	SnacksDashboardIcon = { fg = p.subtext1 },
	SnacksDashboardFooter = { fg = p.purple, italic = true },
	SnacksDashboardSpecial = { fg = u.lighten(p.purple, 0.5, p.fg), bold = true, italic = true },

	-- Keep light diff backgrounds: CodeDiff uses them instead of its dark fallbacks.
	DiffAdd = not is_light and { fg = p.green, bg = p.none } or nil,
	DiffDelete = not is_light and { fg = p.red, bg = p.none } or nil,
	DiffChange = not is_light and { fg = p.orange, bg = p.none } or nil,
	DiffText = not is_light and { fg = p.orange, bg = p.none } or nil,
	Added = { fg = p.green, bg = p.none },
	Removed = { fg = p.red, bg = p.none },
	Changed = { fg = p.orange, bg = p.none },
}
