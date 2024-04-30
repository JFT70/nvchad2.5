-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "catppuccin",
}

M.ui = {
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
  -- might need to be moved to base46
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

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
