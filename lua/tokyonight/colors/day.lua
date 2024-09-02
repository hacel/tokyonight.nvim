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

  -- vim.print(colors)
  -- {
  --   bg = "#e1e2e7",
  --   bg_dark = "#d0d5e3",
  --   bg_highlight = "#c4c8da",
  --   blue = "#2e7de9",
  --   blue0 = "#7890dd",
  --   blue1 = "#188092",
  --   blue2 = "#07879d",
  --   blue5 = "#006a83",
  --   blue6 = "#2e5857",
  --   blue7 = "#92a6d5",
  --   comment = "#848cb5",
  --   cyan = "#007197",
  --   dark3 = "#8990b3",
  --   dark5 = "#68709a",
  --   fg = "#3760bf",
  --   fg_dark = "#6172b0",
  --   fg_gutter = "#a8aecb",
  --   git = {
  --     add = "#4197a4",
  --     change = "#506d9c",
  --     delete = "#c47981"
  --   },
  --   green = "#587539",
  --   green1 = "#387068",
  --   green2 = "#38919f",
  --   magenta = "#9854f1",
  --   magenta2 = "#d20065",
  --   orange = "#b15c00",
  --   purple = "#7847bd",
  --   red = "#f52a65",
  --   red1 = "#c64343",
  --   teal = "#118c74",
  --   terminal_black = "#a1a6c5",
  --   yellow = "#8c6c3e"
  -- }

  -- Overrides
  -- colors.bg = "#e1e2e7"
  colors.bg = "#ffffff"

  -- colors.fg = "#3760bf"
  colors.fg = "#10103f"

  -- colors.orange = "#b15c00"
  colors.orange = "#e15c00"

  --   green = "#587539",
  colors.green = "#587539"

  return colors
end
