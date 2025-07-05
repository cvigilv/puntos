---@author Carlos Vigil-Vásquez
---@license MIT 2024

-- Helper functions {{{
---Splits a string into a table of substrings based on a delimiter.
---@param str string The string to be split
---@param delimiter string The delimiter to split the string by
---@return table A table containing the substrings
---@see string.gmatch
local function split(str, delimiter)
  local result = {}
  for match in (str .. delimiter):gmatch("(.-)" .. delimiter) do
    table.insert(result, match)
  end
  return result
end

local function safe_read(file_path)
  assert(type(file_path) == "string")

  ---@diagnostic disable-next-line: undefined-field
  local handler, message = io.open(file_path, "r")
  if not handler then
    return nil, message
  end
  local contents = handler:read("*a"):gsub("\r\n?", "\n"):gsub("\n$", "")
  handler:close()
  return contents, nil
end

-- }}}

local wezterm = require("wezterm")
wezterm.add_to_config_reload_watch_list("/Users/carlos/.config/wezterm/colorscheme")

local config = {}

-- Colorscheme
-- Load current theme from file
local theme = safe_read("/Users/carlos/.config/wezterm/colorscheme")
local split_succesfully, colo_bg = pcall(split, theme, "\n")
if split_succesfully then
  local colorscheme = wezterm.color.get_builtin_schemes()[colo_bg[1] .. "-" .. colo_bg[2]]

  if colo_bg[2] == "light" then
    colorscheme.background = "#ffffff"
  elseif colo_bg[2] == "dark" then
    colorscheme.background = "#000000"
  end

  config.color_schemes = {
    ["user"] = colorscheme,
  }
  config.color_scheme = "user"
end

-- Font
config.font = wezterm.font({ family = "JetBrains Mono" })
config.font_rules = { -- {{{
  -- NOTE: Default JetBrains bold font is to light, this overrides this value to make use of
  -- a "bolder" variant, so it's easier to see.
  {
    intensity = "Normal",
    italic = true,
    font = wezterm.font(
      "JetBrains Mono",
      { weight = "Regular", stretch = "Normal", style = "Italic" }
    ),
  },
  {
    intensity = "Bold",
    italic = false,
    font = wezterm.font(
      "JetBrains Mono",
      { weight = "ExtraBold", stretch = "Normal", style = "Normal" }
    ),
  },
  {
    intensity = "Bold",
    italic = true,
    font = wezterm.font(
      "JetBrains Mono",
      { weight = "ExtraBold", stretch = "Normal", style = "Italic" }
    ),
  },
} -- }}}
config.line_height = 1.0
config.font_size = 12

-- GUI
config.initial_rows = 48
config.initial_cols = 128
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

-- Behaviour
config.automatically_reload_config = true

return config
