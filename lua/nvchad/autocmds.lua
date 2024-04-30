-- Wrap for markdown file
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.md' },
  command = 'setlocal wrap',
})
