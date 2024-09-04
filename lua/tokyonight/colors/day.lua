---@param opts tokyonight.Config
return function(opts)
  local style = opts.light_style or "night"
  style = style == "day" and "night" or style

  local Util = require("tokyonight.util")

  ---@type Palette
  local colors = vim.deepcopy(Util.mod("tokyonight.colors." .. style))

  ---@type Palette

  Util.invert(colors)
  colors.bg_dark = Util.blend(colors.bg, 0.9, colors.fg)

  vim.print(colors)

  colors.bg = "#ffffff"
  colors.bg_dark = "#ced5e7"
  colors.bg_highlight = "#c3c8df"
  colors.blue = "#0081f8"
  colors.blue0 = "#6990f4"
  colors.blue1 = "#00839a"
  colors.blue2 = "#0089a3"
  colors.blue5 = "#006c8a"
  colors.blue6 = "#1d5a59"
  colors.blue7 = "#8aa6e3"
  colors.comment = "#808cc1"
  colors.cyan = "#00739e"
  colors.dark3 = "#8690bd"
  colors.dark5 = "#6370a6"
  colors.fg = "#0060dc"
  colors.fg_dark = "#5672c2"
  colors.fg_gutter = "#a5aed4"
  colors.git.add = "#009aac"
  colors.git.change = "#416eab"
  colors.git.delete = "#d2717d"
  colors.green = "#507727"
  colors.green1 = "#207269"
  colors.green2 = "#0094a7"
  colors.magenta = "#994dff"
  colors.magenta2 = "#dc0066"
  colors.orange = "#be5200"
  colors.purple = "#7a3bda"
  colors.red = "#ff0062"
  colors.red1 = "#da2036"
  colors.teal = "#008f72"
  colors.terminal_black = "#9fa6ce"
  colors.yellow = "#926a2d"

  ---@class CyberdreamColorLight
  ---@field bg "#ffffff"|string
  ---@field bgAlt "#f7f8f9"|string
  ---@field bgHighlight "#e9eef2"|string
  ---@field bg_solid? string
  ---@field fg "#16181a"|string
  ---@field grey "#7b8496"|string
  ---@field blue "#5ea1ff"|string
  ---@field green "#5eff6c"|string
  ---@field cyan "#5ef1ff"|string
  ---@field red "#ff6e5e"|string
  ---@field yellow "#f1ff5e"|string
  ---@field magenta "#ff5ef1"|string
  ---@field pink "#ff5ea0"|string
  ---@field orange "#ffbd5e"|string
  ---@field purple "#bd5eff"|string
  return colors
end
