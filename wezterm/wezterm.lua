-- Pull in the wezterm API
local wezterm = require 'wezterm'

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
config.color_scheme = 'nord'

config.window_background_opacity = 0.9
-- config.window_background_image = '/home/nana/Pictures/term-bg-01.jpg'
-- config.window_background_image_hsb = {
-- 	brightness = 0.2,
--	saturation = 0.6,
-- }

-- and finally, return the configuration to wezterm
return config
