-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "doomchad",

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- separator_style = "round",
  },

  tabufline = {
    enabled = true,
    lazyload = false,
  },

  telescope = {
    style = "bordered"
  },

  transparency = false,

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
  hl_override = {
    Comment = {
      italic = true,
    },
  },
  hl_add = {
    NvimTreeOpenedFolderName = {
      fg = "green",
      bold = true,
    },
  },
}

return M
