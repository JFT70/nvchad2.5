require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Crates
map("n", "<leader>rcu", function () require('crates').upgrade_all_crates() end, { desc = "update crates" })
map("n", "<leader>ct", function () require("crates").show_popup() end, { desc = "Show Crate Popup" })
map("n", "<leader>cf", function () require("crates").show_features_popup() end, { desc = "Show Crate Features" })
map("n", "<leader>cv", function () require("crates").show_versions_popup() end, { desc = "Crate Version Popup" })
map("n", "<leader>cH", function () require("crates").open_homepage() end, { desc = "Open Crate Homepage" })
map("n", "<leader>cR", function () require("crates").open_repository() end, { desc = "Open Crate Repository" })
map("n", "<leader>cD", function () require("crates").open_documentation() end, { desc = "Open Crate Documentation" })
map("n", "<leader>cC", function () require("crates").open_crates_io() end, { desc = "Open Crate.io Page ", })

-- Telescope
map("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })
map("n", "<leader>ft", "<cmd>Telescope help_tags<cr>", { desc = "Help Tags" })
map("n", "<leader>fc", "<cmd>Telescope commands<cr>", { desc = "Commands" })
map("n", "<leader>td", "<cmd>Telescope diagnostics<cr>", { desc = "Show diagnostics" })


map("n", "<leader>gn", function () vim.diagnostic.goto_next() end, { desc = "Go to next diagnostic" })
map("n", "<leader>gp", function () vim.diagnostic.goto_prev() end, { desc = "Go to previous diagnostic" })
map("n", "<leader>gl", "<cmd>Telescope diagnostics<cr>", { desc = "Open Telescope diagnostics" })

-- Terminal
map("t", "<Esc>", "<C-\\><C-N>", { desc = "Go to NTERMINAL mode"})
