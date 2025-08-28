return {
  "olrtg/nvim-emmet",
  dependencies = {
    "olrtg/emmet-language-server",
  },
  config = function()
    --vim.keymap.set({ "n", "v" }, '<leader>ce', require('nvim-emmet').wrap_with_abbreviation)
    vim.keymap.set({"n", "v"}, "<leader>ce", require('nvim-emmet').wrap_with_abbreviation, { desc = "Wrap with abbreviation" })
  end,
}
