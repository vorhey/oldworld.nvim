local M = {}

M.bg = "#ffffff"
M.fg = "#000000"

local NONE = "none"

local hex_to_rgb = function(hex_str)
	local hex = "[abcdef0-9][abcdef0-9]"
	local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
	hex_str = string.lower(hex_str)

	assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

	local red, green, blue = string.match(hex_str, pat)
	return { tonumber(red, 16), tonumber(green, 16), tonumber(blue, 16) }
end

local function as_rgb(color, fallback)
	color = color or fallback
	assert(color, "as_rgb: color and fallback may not both be nil")

	local normalized = string.lower(color)
	if normalized == NONE or normalized == "#" .. NONE then
		color = fallback
	end

	return hex_to_rgb(color)
end

function M.blend(fg, bg, alpha)
	fg = as_rgb(fg, M.fg)
	bg = as_rgb(bg, M.bg)

	local blendChannel = function(i)
		local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
		return math.floor(math.min(math.max(0, ret), 255) + 0.5)
	end

	return string.format("#%02X%02X%02X", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.darken(hex, amount, bg)
	return M.blend(hex, bg or M.bg, math.abs(amount))
end

function M.lighten(hex, amount, fg)
	return M.blend(hex, fg or M.fg, math.abs(amount))
end

return M
