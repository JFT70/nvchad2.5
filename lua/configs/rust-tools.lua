local config = require("nvchad.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local options = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
    -- settings = {
    --   ['rust-analyzer'] = {
    --      cargo = {
    --       -- allFeatures = true,
    --       -- target = "wasm32",
    --       features = "all",
    --     },
    --   }
    -- }
  }
}

return options
