---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  -- nvim theme
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },
  -- statusline
  statusline = {
    theme = "default",
    separator_style = "arrow",
  },
  -- highlights
  --hl_override = highlights.override,
  --hl_add = highlights.add,
  -- cmp themeing
  cmp = {
    style = "flat_light",
  },
  -- telescope
  telescope = {
    style = "bordered",
  },
  -- overriding nvdash ASCII highlights 
  hl_override = {
    NvDashAscii = {
      bg = "none",
      fg = "sun",
    },
    NvDashButtons = {
      bg = "NONE",
      fg = "grey_fg2"
    }
  },
  -- nvdash (dashboard)
  nvdash = {
    header = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    },
    load_on_startup = true,

    buttons = {
      { "󰱼  Find File", "Spc f f", "Telescope find_files" },
      { "  Toggle File Explorer", "Spc e", "Toggle nvimtree" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
      { "  Quit NVIM", "Spc q q", "quit nvim" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
