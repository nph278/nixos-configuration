-- Treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'rust', 'lua', 'toml', 'python', 'nix', 'markdown', 'bash', 'css'
  },

  highlight = { enable = true },

  context_commentstring = { enable = true, enable_autocmd = false },
}
vim.api.nvim_set_keymap('n', '_', ':foldopen<CR>', { silent = true }) -- Fold
vim.api.nvim_set_keymap('n', '-', ':foldclose<CR>', { silent = true })
