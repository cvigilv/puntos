local wezterm = require("wezterm")
local config = {}

-- Colorscheme
local user_colorscheme = wezterm.color.get_builtin_schemes()["Humanoid light (base16)"]
user_colorscheme.background = "#F1EFEB"

config.color_schemes = {
	["user"] = user_colorscheme,
}
config.color_scheme = "user"

-- Font
config.font = wezterm.font({ family = "JetBrains Mono" })
config.font_rules = {
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font("JetBrains Mono", { weight = "Regular", stretch = "Normal", style = "Italic" }),
	},
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font("JetBrains Mono", { weight = "ExtraBold", stretch = "Normal", style = "Normal" }),
	},
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font("JetBrains Mono", { weight = "ExtraBold", stretch = "Normal", style = "Italic" }),
	},
}

config.line_height = 1.1
config.font_size = 15
config.colors = {
	cursor_bg = "#fbb149",
	cursor_fg = "#fffdf9",
}

-- GUI
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

return config
