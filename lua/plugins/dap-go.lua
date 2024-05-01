return {
  "leoluz/nvim-dap-go",
  ft = "go",
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
  config = function(_, opts)
    require("dap-go").setup(opts)

    local map = vim.keymap.set
    map("n", "<leader>dgt", function () require("dap-go").debug_test() end,  { desc = "Debug go test" })
    map("n", "<leader>dgl", function () require("dap-go").debug_last() end,  { desc = "Debug last go test" })
  end,
}
