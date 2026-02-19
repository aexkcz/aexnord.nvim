local named_colors = require("aexnord.named_colors")

local dark_colors = {
	aexnord0_gui = named_colors.black, -- aexnord0 in palette
	aexnord1_gui = named_colors.dark_gray, -- aexnord1 in palette
	aexnord2_gui = named_colors.gray, -- aexnord2 in palette
	aexnord3_gui = named_colors.light_gray, -- aexnord3 in palette
	aexnord3_gui_bright = named_colors.light_gray_bright, -- out of palette
	aexnord4_gui = named_colors.darkest_white, -- aexnord4 in palette
	aexnord5_gui = named_colors.darker_white, -- aexnord5 in palette
	aexnord6_gui = named_colors.white, -- aexnord6 in palette
	aexnord7_gui = named_colors.teal, -- aexnord7 in palette
	aexnord8_gui = named_colors.off_blue, -- aexnord8 in palette
	aexnord9_gui = named_colors.glacier, -- aexnord9 in palette
	aexnord10_gui = named_colors.blue, -- aexnord10 in palette
	aexnord11_gui = named_colors.red, -- aexnord11 in palette
	aexnord12_gui = named_colors.orange, -- aexnord12 in palette
	aexnord13_gui = named_colors.yellow, -- aexnord13 in palette
	aexnord14_gui = named_colors.green, -- aexnord14 in palette
	aexnord15_gui = named_colors.purple, -- aexnord15 in palette
	aexnord16_gui_ghost = named_colors.lighter_gray, -- aexnord15 in palette
	none = "NONE",
}

local light_colors = {
	aexnord0_gui = named_colors.white, -- aexnord0 in palette
	aexnord1_gui = named_colors.darker_white, -- aexnord1 in palette
	aexnord2_gui = named_colors.darkest_white, -- aexnord2 in palette
	aexnord3_gui = named_colors.light_gray, -- aexnord3 in palette
	aexnord3_gui_bright = named_colors.light_gray_bright, -- out of palette
	aexnord4_gui = named_colors.gray, -- aexnord4 in palette
	aexnord5_gui = named_colors.dark_gray, -- aexnord5 in palette
	aexnord6_gui = named_colors.black, -- aexnord6 in palette

	-- Same colors across light and dark from here down...
	aexnord7_gui = named_colors.teal, -- aexnord7 in palette
	aexnord8_gui = named_colors.off_blue, -- aexnord8 in palette
	aexnord9_gui = named_colors.glacier, -- aexnord9 in palette
	aexnord10_gui = named_colors.blue, -- aexnord10 in palette
	aexnord11_gui = named_colors.red, -- aexnord11 in palette
	aexnord12_gui = named_colors.orange, -- aexnord12 in palette
	aexnord13_gui = named_colors.yellow, -- aexnord13 in palette
	aexnord14_gui = named_colors.green, -- aexnord14 in palette
	aexnord15_gui = named_colors.purple, -- aexnord15 in palette
	aexnord16_gui_ghost = named_colors.lighter_gray, -- aexnord15 in palette
	none = "NONE",
}

local aexnord = (vim.o.background == "dark") and dark_colors or light_colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.aexnord_contrast then
	aexnord.sidebar = aexnord.aexnord1_gui
	aexnord.float = aexnord.aexnord1_gui
else
	aexnord.sidebar = aexnord.aexnord0_gui
	aexnord.float = aexnord.aexnord0_gui
end

if vim.g.aexnord_cursorline_transparent then
	aexnord.cursorlinefg = aexnord.aexnord0_gui
else
	aexnord.cursorlinefg = aexnord.aexnord1_gui
end

return aexnord
