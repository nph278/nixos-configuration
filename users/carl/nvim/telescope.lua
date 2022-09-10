-- Telescope
local telescope = require('telescope')

telescope.load_extension('fzf')
telescope.load_extension("ui-select")

telescope.setup {
  pickers = {
    git_branches = { theme = 'dropdown' },
    find_files = { theme = 'dropdown' },
    lsp_code_actions = { theme = 'cursor' }
  },

  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {}
    }
  },

  preview = { treesitter = true }
}

vim.api.nvim_set_keymap('n', '<space>p', ':Telescope find_files<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>hp', ':split<CR>:Telescope find_files<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>vp', ':vsplit<CR>:Telescope find_files<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>rg', ':Telescope live_grep<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>b', ':Telescope git_branches<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>f', ':Telescope lsp_workspace_symbols<CR>',
  { silent = true })

vim.api.nvim_set_keymap('n', '<space>ca', ':lua vim.lsp.buf.code_action()<CR>',
  { silent = true })
vim.api.nvim_set_keymap('v', '<space>ca', ':\'<,\'>lua vim.lsp.buf.range_code_action()<CR>',
  { silent = true })


vim.api.nvim_set_keymap('n', '<space>h', ':Telescope registers<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>d', ':Telescope diagnostics<CR>',
  { silent = true })

vim.api.nvim_set_hl(0, 'TelescopeSelection', { ctermbg = 0, ctermfg = 4 })
vim.api.nvim_set_hl(0, 'TelescopeMatching', { ctermbg = 0, ctermfg = 3 })
