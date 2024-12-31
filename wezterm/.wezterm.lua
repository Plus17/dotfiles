-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Changing the color scheme:
config.color_scheme = "Catppuccin Macchiato"

-- Change font
config.font = wezterm.font("FiraCode Nerd Font", {weight="Medium"})

-- Font size
config.font_size = 16

-- Hide tab bar when only one tab active
config.hide_tab_bar_if_only_one_tab = true

-- Hide title bar
config.window_decorations = "RESIZE"

config.keys = {
  {
    key = 't',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ShowTabNavigator,
  },
  {
    key = 'Z',
    mods = 'CMD|SHIFT',
    action = wezterm.action.QuickSelect
  },
  {
    key = 'X',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivateCopyMode
  },
  {
    key = 's',
    mods = 'ALT',
    action = wezterm.action.ShowLauncherArgs { flags = 'FUZZY|WORKSPACES' },
  }
}


-- and finally, return the configuration to wezterm
return config
