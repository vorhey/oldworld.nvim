local p = require("oldworld.palette")
local config = require("oldworld.config")

local styles = vim.tbl_map(function(value)
	return setmetatable(value, {
		__add = function(a, b)
			return vim.tbl_extend("force", a, b)
		end,
	})
end, config.styles)

return {
	Comment = { fg = p.comment, italic = false } + styles.comments, -- any comment
	Constant = { fg = p.red }, -- any constant
	String = { fg = p.soft_lavender } + styles.strings, -- a string constant: "this is a string"
	Character = { fg = p.green }, -- a character constant: 'p', '\n'
	Number = { fg = p.magenta }, -- a number constant: 234, 0xff
	Boolean = { fg = p.dark_purple } + styles.booleans, -- a boolean constant: TRUE, false
	Float = { fg = p.magenta }, -- a floating point constant: 2.3e10
	Identifier = { fg = p.pastel_orchid } + styles.identifiers, -- any variable name
	Function = { fg = p.blue } + styles.functions, -- function name (also: methods for classes)
	Statement = { fg = p.muted_purple }, -- any statement
	Conditional = { fg = p.blue }, -- if, then, else, endif, switch, etc.
	Repeat = { fg = p.purple }, -- for, do, while, etc.
	Label = { fg = p.purple }, -- case, default, etc.
	Operator = { fg = p.periwinkle }, -- sizeof", "+", "*", etc.
	Keyword = { fg = p.purple } + styles.keywords, -- any other keyword
	Exception = { fg = p.purple }, -- try, catch, throw
	PreProc = { fg = p.red }, -- generic Preprocessor
	Include = { fg = p.purple }, -- preprocessor #include
	Define = { fg = p.red }, -- preprocessor #define
	Macro = { fg = p.red }, -- same as Define
	PreCondit = { fg = p.red }, -- preprocessor #if, #else, #endif, etc.
	Type = { fg = p.muted_purple } + styles.types, -- int, long, char, etc.
	StorageClass = { fg = p.dark_purple }, -- static, register, volatile, etc.
	Structure = { fg = p.red }, -- struct, union, enum, etc.
	Typedef = { fg = p.dark_purple }, -- A typedef
	Special = { fg = p.blue }, -- any special symbol
	SpecialChar = { fg = p.dark_purple }, -- special character in a constant
	Tag = { fg = p.dark_purple }, -- you can use CTRL-] on this
	SpecialComment = { fg = p.subtext4 }, -- special things inside a comment
	Debug = { fg = p.dark_purple }, -- debugging statements
	Underlined = { underline = true }, -- text that stands out, HTML links
	Error = { fg = p.orange }, -- any erroneous construct
	Todo = { fg = p.dark_purple }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	-- HTML
	htmlArg = { fg = p.fg, italic = true }, -- attributes
	htmlEndTag = { fg = p.subtext1 }, -- end tag />
	htmlTitle = { fg = p.fg }, -- title tag text
	htmlTag = { fg = p.subtext1 }, -- tag delimiters
	htmlTagN = { fg = p.subtext1 },
	htmlTagName = { fg = p.red }, -- tag text

	-- Diff
	diffAdded = { fg = p.green },
	diffRemoved = { fg = p.red },
	diffChanged = { fg = p.dark_purple },
	diffOldFile = { fg = p.gray4 },
	diffNewFile = { fg = p.fg },
	diffFile = { fg = p.subtext4 },
	diffLine = { fg = p.red },
	diffIndexLine = { fg = p.magenta },
}
