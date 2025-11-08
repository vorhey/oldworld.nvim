local p = require("oldworld.palette")

return {
	RenderMarkdownBullet = { fg = p.cyan },
	RenderMarkdownH1Bg = { bg = p.bg, fg = p.red },
	RenderMarkdownH2Bg = { bg = p.bg, fg = p.purple },
	RenderMarkdownH3Bg = { bg = p.bg, fg = p.blue },
	RenderMarkdownH4Bg = { bg = p.bg, fg = p.teal },
	RenderMarkdownH5Bg = { bg = p.bg, fg = p.orange },
	RenderMarkdownH6Bg = { bg = p.bg, fg = p.green },
	RenderMarkdownH1 = { fg = p.red, bold = true },
	RenderMarkdownH2 = { fg = p.purple, bold = true },
	RenderMarkdownH3 = { fg = p.blue, bold = true },
	RenderMarkdownH4 = { fg = p.teal, bold = true },
	RenderMarkdownH5 = { fg = p.orange, bold = true },
	RenderMarkdownH6 = { fg = p.green, bold = true },
	RenderMarkdownTableHead = { fg = p.subtext3 },
	RenderMarkdownTableRow = { fg = p.subtext3 },
}
