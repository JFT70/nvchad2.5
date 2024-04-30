require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

o.wrap=false

-- setting the next option to true causes the workspace to fail
-- since it changes the cwd from the workspace root to the current buffer dir
-- opt.autochdir = true

-- See column 80
--opt.colorcolumn = "80"

o.relativenumber = true

o.termguicolors = true

-- opt.tabstop = 4
-- opt.shiftwidth = 4

-- Enable Conditional Compilation in Rust
vim.g.rustfmt_cfg_mode = 1

-- Disable auto-resize when deleting split
vim.o.equalalways = false
