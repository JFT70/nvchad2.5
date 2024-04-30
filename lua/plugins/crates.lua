return {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    --tag = 'stable',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function (_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  }
