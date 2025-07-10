-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 80
config.initial_rows = 78

config.enable_tab_bar = false
config.enable_scroll_bar = false

-- or, changing the font size and color scheme.
config.font = wezterm.font_with_fallback({
  "Hack",
  {family="JetBrains Mono", weight='Bold', italic=true }
})

config.font_size = 10

local relativePath = os.getenv("HOME")
local local_config = require(relativePath .. "/wezterm-local")
local_config.apply_to_config(config)

-- Finally, return the configuration to wezterm:
return config
