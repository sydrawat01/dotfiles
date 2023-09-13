---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>qq"] = { "<cmd> qa <CR>", "quit nvim"},
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

M.nvimtree = {
  n = {
    -- focus
    ["<C-n>"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },

    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree"},
  },
}

M.telescope = {
  n = {
    -- find
    ["<leader>fs"] = { "<cmd> Telescope live_grep <CR>", "Live_grep" }
  }
}

return M
