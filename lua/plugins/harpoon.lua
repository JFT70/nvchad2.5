return {
  "ThePrimeagen/harpoon",
  lazy = false,
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
    local harpoon = require('harpoon')
    local opts = {
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = false,
        key = function()
            return vim.loop.cwd()
        end,
      }
    }
    harpoon:setup(opts)

    -- basic telescope configuration
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
            table.insert(file_paths, item.value)
        end

        require("telescope.pickers").new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
                results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
        }):find()
    end

    vim.keymap.set("n", "<leader>fp", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })

    vim.keymap.set("n", "<leader>pa", function() harpoon:list():add() end, { desc = "Harpoon Add File" })
    vim.keymap.set("n", "<leader>pl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon Quick Menu" })

    vim.keymap.set("n", "<leader>p1", function() harpoon:list():select(1) end, { desc = "Harpoon Select 1" })
    vim.keymap.set("n", "<leader>p2", function() harpoon:list():select(2) end, { desc = "Harpoon Select 2" })
    vim.keymap.set("n", "<leader>p3", function() harpoon:list():select(3) end, { desc = "Harpoon Select 3" })
    vim.keymap.set("n", "<leader>p4", function() harpoon:list():select(4) end, { desc = "Harpoon Select 4" })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<leader>pp", function() harpoon:list():prev() end, { desc = "Harpoon Previous File" })
    vim.keymap.set("n", "<leader>pn", function() harpoon:list():next() end, { desc = "Harpoon Next File" })
  end
}
