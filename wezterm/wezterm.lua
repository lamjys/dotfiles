-- Pull in the wezterm API
local wezterm = require("wezterm")
local constants = require("constants")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.color_scheme = "nord"

config.window_background_image = constants.bg_image
-- config.window_background_image = "/home/nana/Pictures/term-bg-01.jpg"
config.window_background_image_hsb = {
	brightness = 0.2,
	saturation = 0.6,
}

-- Appearance
config.window_background_opacity = 0.9
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 3,
	right = 3,
	top = 3,
	bottom = 3,
}

-- Font settings
config.font_size = 12
config.font = wezterm.font("MesloLGLDZ Nerd Font")

-- and finally, return the configuration to wezterm
return config
