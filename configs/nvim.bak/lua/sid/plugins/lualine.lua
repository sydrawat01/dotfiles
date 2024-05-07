-- import lualine plugin safely
local status, lualine = pcall(require, 'lualine')
if not status then
  return
end

-- get lualine nightfly theme
local lualine_onedark = require('lualine.themes.onedark')

-- color table for highlights
local new_colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67'
}

-- change onedark theme colors
lualine_onedark.normal.a.bg = new_colors.blue
lualine_onedark.insert.a.bg = new_colors.green
lualine_onedark.visual.a.bg = new_colors.violet
lualine_onedark.command = {
  a = {
    gui = 'bold',
    bg = new_colors.yellow,
    fg = new_colors.black, -- black
  },
}

-- configure lualine with modified theme
lualine.setup({
  options = {
    icons_enabled = true,
    theme = 'onedark',
  },
})
