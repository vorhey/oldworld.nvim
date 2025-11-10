local function clone(tbl)
	local copy = {}
	for k, v in pairs(tbl) do
		copy[k] = v
	end
	return copy
end

local base_palette = {
	bg = "NONE",
	fg = "#c9c7cd",
	muted_purple = "#747991",
	soft_lavender = "#897e96",
	pastel_orchid = "#be93c2",
	comment = "#989898",
	selection = "#e3e4ff",
	border = "#3d3d3d",
	subtext1 = "#b4b1ba",
	subtext2 = "#9f9ca6",
	subtext3 = "#8b8693",
	subtext4 = "#6c6874",
	bg_dark = "#131314",
	black = "#27272a",
	red = "#ea83a5",
	green = "#90b99f",
	yellow = "#e6b99d",
	purple = "#aca1cf",
	magenta = "#e29eca",
	orange = "#f5a191",
	blue = "#92a2d5",
	cyan = "#85b5ba",
	gray0 = "#18181a",
	gray1 = "#1b1b1c",
	gray2 = "#2a2a2c",
	gray3 = "#313134",
	gray4 = "#3b3b3e",
	gray5 = "#444448",
	none = "NONE",
	kind_green = "#3CA60F",
	kind_gold = "#ffd700",
	kind_purple = "#d7c6f7",
	soft_yellow = "#fff3cc",
	soft_red = "#f79292",
	rose = "#ff9ea8",
	navy = "#214283",
	link = "#5d82d9",
	periwinkle = "#aaa4e5",
	jade = "#54d6a2",
	parameter = "#747991",
}

local palettes = {
	dark = base_palette,
	light = clone(base_palette),
}

return function(variant)
	return palettes[variant] or palettes.dark
end
