local p = require("oldworld.palette")

return {
	FlashLabel = { fg = p.muted_purple, bg = p.navy, bold = true },
	FlashBackdrop = { fg = p.subtext4 },
	FlashMatch = { fg = p.purple, bg = p.bg },
	FlashCurrent = { fg = p.cyan, bg = p.bg },
	FlashPrompt = { bg = p.bg_dark },
}
