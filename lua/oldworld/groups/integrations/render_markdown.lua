local p = require("oldworld.palette")

return {
	RenderMarkdownBullet = { fg = p.cyan },
	RenderMarkdownH1Bg = { bg = "#fce4ec", fg = "#c2185b" },
	RenderMarkdownH2Bg = { bg = "#f3e5f5", fg = "#7b1fa2" },
	RenderMarkdownH3Bg = { bg = "#e8eaf6", fg = "#3f51b5" },
	RenderMarkdownH4Bg = { bg = "#e0f2f1", fg = "#00796b" },
	RenderMarkdownH5Bg = { bg = "#fff3e0", fg = "#e65100" },
	RenderMarkdownH6Bg = { bg = "#f1f8e9", fg = "#558b2f" },
	RenderMarkdownH1 = { fg = "#c2185b", bold = true },
	RenderMarkdownH2 = { fg = "#7b1fa2", bold = true },
	RenderMarkdownH3 = { fg = "#3f51b5", bold = true },
	RenderMarkdownH4 = { fg = "#00796b", bold = true },
	RenderMarkdownH5 = { fg = "#e65100", bold = true },
	RenderMarkdownH6 = { fg = "#558b2f", bold = true },
	RenderMarkdownTableHead = { fg = p.subtext3 },
	RenderMarkdownTableRow = { fg = p.subtext3 },
}
