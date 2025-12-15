local p = require("oldworld.palette")
local u = require("oldworld.utils.color_utils")

local DARKEN_AMOUNT = 0.20

local custom = {
	text = p.muted_purple or "#747991",
	selection = p.selection or "#e3e4ff",
	border = p.border or p.gray3,
	search = p.navy,
}

return {
	ColorColumn = { bg = p.bg }, -- used for the columns set with 'colorcolumn'
	Conceal = { fg = p.gray1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
	Cursor = { fg = p.black, bg = p.fg }, -- the character under the cursor
	lCursor = { fg = p.black, bg = p.fg }, -- the character under the cursor
	CursorIM = { fg = p.black, bg = p.fg }, -- the character under the cursor
	CursorLine = { bg = p.bg }, -- the screen line that the cursor is in when 'cursorline' is set
	Directory = { fg = p.purple }, -- directory names (and other special names in listings)
	DiffAdd = { bg = u.darken(p.green, DARKEN_AMOUNT, p.bg), fg = p.green }, -- diff mode: Added line
	DiffChange = { bg = u.darken(p.orange, DARKEN_AMOUNT, p.bg), fg = p.orange }, -- diff mode: Changed line
	DiffDelete = { bg = u.darken(p.red, DARKEN_AMOUNT, p.bg), fg = p.red }, -- diff mode: Deleted line
	DiffText = { bg = p.orange, fg = u.darken(p.orange, DARKEN_AMOUNT, p.bg) }, -- diff mode: Changed text within a changed line
	EndOfBuffer = { fg = p.bg },
	ErrorMsg = { fg = p.orange }, -- error messages on the command line
	VertSplit = { fg = p.gray2 }, -- the column separating vertically split windows
	WinSeparator = { fg = p.gray2 }, -- the column separating vertically split windows
	FoldColumn = { bg = p.bg, fg = p.subtext4 }, -- column where folds are displayed
	SignColumn = { bg = p.bg, fg = p.subtext4 }, -- column where signs are displayed
	IncSearch = { fg = p.black, bg = p.dark_purple }, -- 'incsearch' highlighting; also used for the text replaced with ":s///p"
	CurSearch = { fg = p.black, bg = p.dark_purple }, -- 'cursearch' highlighting; also used for the text replaced with ":s///p"
	LineNr = { fg = custom.text }, -- Line number for " =number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
	CursorLineNr = { fg = p.subtext1 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
	MatchParen = { fg = p.dark_purple, underline = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match.
	ModeMsg = { fg = custom.text, bg = p.bg }, --' showmode' message (e.g., "-- INSERT --")
	MoreMsg = { fg = u.lighten(p.magenta, 0.5, p.fg) }, -- more-prompt
	NonText = { fg = p.subtext4 }, --'~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., > displayed when a double-wide character doesn't fit at the end of the line).
	Normal = { fg = custom.text, bg = p.bg }, -- normal text
	NormalNC = { fg = custom.text, bg = p.bg }, -- normal text
	NormalFloat = { fg = custom.text, bg = p.bg }, -- Normal text in floating windows.
	FloatBorder = { fg = custom.border, bg = p.bg }, -- Border of floating windows.
	FloatTitle = { fg = custom.text, bg = p.bg },
	Pmenu = { fg = custom.text, bg = p.bg }, -- Popup menu: normal item.
	PmenuSel = { fg = custom.text, bg = custom.selection }, -- Popup menu: selected item.
	PmenuSbar = { bg = p.gray2 }, -- Popup menu: scrollbar.
	PmenuThumb = { bg = p.gray3 }, -- Popup menu: Thumb of the scrollbar.
	Question = { fg = p.purple }, -- hit-enter prompt and yes/no questions
	QuickFixLine = { fg = p.red, bg = p.gray2 }, -- Current quickfix item in the quickfix window.
	Search = { fg = p.black, bg = p.kind_purple }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
	Substitute = { fg = custom.text, bg = custom.search },
	SpecialKey = { fg = p.subtext2 }, -- Meta and special keys listed with  =map, also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
	SpellBad = { fg = p.orange, underline = true }, -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
	SpellCap = { fg = p.dark_purple }, -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
	SpellLocal = { fg = p.dark_purple }, -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
	SpellRare = { fg = p.dark_purple }, -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
	StatusLine = { fg = custom.text, bg = p.bg }, -- status line of current window
	StatusLineNC = { fg = custom.text, bg = p.bg }, -- status lines of not-current windows Note = if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	StatusLineTerm = { fg = custom.text, bg = p.bg }, -- status line of current :terminal window
	StatusLineTermNC = { fg = custom.text, bg = p.bg }, -- status line of non-current  =terminal window
	TabLine = { fg = p.subtext4 }, -- tab pages line, not active tab page label
	TabLineFill = { bg = p.bg }, -- tab pages line, where there are no labels
	TabLineSel = { fg = p.fg }, -- tab pages line, active tab page label
	Terminal = { fg = p.fg, bg = p.black }, -- terminal window (see terminal-size-color)
	Title = { fg = p.green }, -- titles for output from " =set all", ":autocmd" etc.
	Italic = { fg = p.blue, italic = true },
	Visual = { bg = custom.selection }, -- Visual mode selection
	VisualNOS = { bg = custom.selection }, -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
	WarningMsg = { fg = p.dark_purple }, -- warning messages
	WildMenu = { fg = p.black, bg = p.purple }, -- current match in 'wildmenu' completion
	Winbar = { fg = custom.text, bg = p.bg }, -- Winbar
	WinbarNC = { fg = custom.text, bg = p.bg }, -- Winbar non-current windows.
	Folded = { fg = custom.text }, -- line used for closed folds
	Whitespace = { bg = p.bg },
	SnippetTabStop = { bg = p.bg },
}
