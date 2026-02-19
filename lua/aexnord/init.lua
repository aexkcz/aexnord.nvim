-- Colorscheme name:    aexnord.nvim
-- Description:         Port of articicestudio's aexnord theme for neovim
-- Author:              https://github.com/shaunsingh

local util = require("aexnord.util")

local bufferline = require("bufferline.theme")

-- Load the theme
local set = function()
	util.load()
end

return { set = set, bufferline = bufferline }
