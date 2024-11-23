local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 12.5
config.color_scheme = "Tokyo Night"

config.enable_tab_bar = false
config.window_padding = {
	left = 16,
	right = 16,
	top = 14,
	bottom = 14,
}

-- should help on a powerful gpu but can cause issues/lag on a weaker device
-- config.max_fps = 120
-- config.animation_fps = 120

config.warn_about_missing_glyphs = false
config.window_close_confirmation = "NeverPrompt"

-- fullscreen on startup
local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
