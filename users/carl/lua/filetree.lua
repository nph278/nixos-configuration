-- File tree
require('nvim-tree').setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  auto_close = false,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = false,
  update_to_buf_dir = { enable = true, auto_open = true },
  diagnostics = {
    enable = true,
    icons = { hint = 'h', info = 'i', warning = '?', error = '!' }
  },
  update_focused_file = { enable = false, update_cwd = false, ignore_list = {} },
  system_open = { args = {} },
  filters = { dotfiles = false, custom = {} },
  git = { enable = true, ignore = true, timeout = 500 },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = { custom_only = false, list = {} },
    number = false,
    relativenumber = false,
    signcolumn = 'yes'
  },
  trash = { cmd = 'trash', require_confirm = true }
}

vim.api.nvim_set_keymap('n', '<C-e>', ':NvimTreeToggle<CR>', { silent = true })

vim.cmd('highlight NvimTreeVertSplit ,ctermfg=0 ,ctermbg=0')
vim.cmd('highlight NvimTreeFolderIcon ,ctermfg=4')
vim.cmd('highlight NvimTreeLspDiagnosticsError ,ctermfg=1')
vim.cmd('highlight NvimTreeLspDiagnosticsWarning ,ctermfg=3')
vim.cmd('highlight NvimTreeLspDiagnosticsHint ,ctermfg=4')
vim.cmd('highlight NvimTreeLspDiagnosticsInformation ,ctermfg=4')
vim.cmd('highlight NvimTreeGitNew ,ctermfg=2')
vim.cmd('highlight NvimTreeGitDeleted ,ctermfg=1')
