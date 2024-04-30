require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

vim.lsp.config.clangd = {
  cmd = { 'clangd', '--background-index' },
  root_markers = { 'compile_commands.json', 'compile_flags.txt', '.git' },
  filetypes = { 'c', 'cpp', 'cc' },
}
vim.lsp.enable('clangd')

vim.lsp.config.gopls = {
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_markers = { "go.work", "go.mod", ".git" },
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}
vim.lsp.enable('gopls')

vim.lsp.config.pyright = {
  filetypes = { "python", "py" },
}
vim.lsp.enable('pyright')

-- typescript
vim.lsp.config.tsserver = {
  -- init_options = {
  --   preferences = {
  --     disableSuggestions = true,
  --   },
  -- }
}
vim.lsp.enable('tsserver')
