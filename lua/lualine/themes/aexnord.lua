local colors = require("aexnord.colors")

local aexnord = {}

aexnord.normal = {
	a = { fg = colors.aexnord1_gui, bg = colors.aexnord9_gui },
	b = { fg = colors.aexnord5_gui, bg = colors.aexnord2_gui },
	c = { fg = colors.aexnord4_gui, bg = colors.aexnord1_gui },
}

aexnord.insert = {
	a = { fg = colors.aexnord1_gui, bg = colors.aexnord4_gui },
	b = { fg = colors.aexnord6_gui, bg = colors.aexnord2_gui },
	y = {  fg = colors.aexnord5_gui, bg = colors.aexnord2_gui },
}

aexnord.visual = {
	a = { fg = colors.aexnord0_gui, bg = colors.aexnord7_gui },
	b = { fg = colors.aexnord4_gui, bg = colors.aexnord2_gui },
	y = {  fg = colors.aexnord5_gui, bg = colors.aexnord2_gui },
}

aexnord.replace = {
	a = { fg = colors.aexnord0_gui, bg = colors.aexnord11_gui },
	b = { fg = colors.aexnord4_gui, bg = colors.aexnord2_gui },
	y = {  fg = colors.aexnord5_gui, bg = colors.aexnord2_gui },
}

aexnord.command = {
	a = { fg = colors.aexnord0_gui, bg = colors.aexnord15_gui, gui = "bold" },
	b = { fg = colors.aexnord4_gui, bg = colors.aexnord2_gui },
	y = {  fg = colors.aexnord5_gui, bg = colors.aexnord2_gui },
}

aexnord.inactive = {
	a = { fg = colors.aexnord4_gui, bg = colors.aexnord0_gui, gui = "bold" },
	b = { fg = colors.aexnord4_gui, bg = colors.aexnord0_gui },
	c = { fg = colors.aexnord4_gui, bg = colors.aexnord1_gui },
}

return aexnord
