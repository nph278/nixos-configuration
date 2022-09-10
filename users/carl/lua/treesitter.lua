-- Treesitter
vim.o.foldenable = true
vim.o.foldlevel = 1000
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

require('nvim-treesitter.configs').setup {

  highlight = { enable = true },

  context_commentstring = { enable = true, enable_autocmd = false },
}
vim.api.nvim_set_keymap('n', '_', ':foldopen<CR>', { silent = true }) -- Fold
vim.api.nvim_set_keymap('n', '-', ':foldclose<CR>', { silent = true })
