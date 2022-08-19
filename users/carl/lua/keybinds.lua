-- Override C-f
-- Why? I forgot
vim.api.nvim_set_keymap('n', '<C-f>', '', {})

-- Panel navigation
vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { silent = true })

-- Rust
vim.api.nvim_set_keymap('n', '<space>ct', ':!cargo test<CR>', {})
vim.api.nvim_set_keymap('n', '<space>cr', ':!cargo run<CR>', {})

-- Files
vim.api.nvim_set_keymap('n', '<space>q', ':xa<CR>', {})
vim.api.nvim_set_keymap('n', '<space>w', '<C-f><ESC>:w<CR>', {})
vim.api.nvim_set_keymap('n', '<space>s', '<C-^>', {})

-- Git
vim.api.nvim_set_keymap('n', '<space>gs', ':!git status<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<space>ga', ':!git add -A<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<space>gc', ':!git commit -m ', { silent = true })
vim.api.nvim_set_keymap('n', '<space>gp', ':!git push<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<space>gg',
  ':!git log --graph --pretty=oneline --abbrev-commit<CR>',
  { silent = true })

-- Other
vim.api.nvim_set_keymap('n', 'Y', 'y$', {})
vim.api.nvim_set_keymap('i', ',', ',<C-g>u', { noremap = true })
vim.api.nvim_set_keymap('i', ';', ';<C-g>u', { noremap = true })
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { silent = true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { silent = true })
vim.api.nvim_set_keymap('n', '/', "/\\c", { silent = true })
vim.api.nvim_set_keymap('t', '<Esc><Esc>', "<C-\\><C-n>", { silent = true })
vim.api.nvim_set_keymap('t', '<C-d>', "<Esc><Esc>:q<CR>", { silent = true })

vim.api.nvim_set_keymap('n', '<A-v>', ":vsplit<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<A-b>', ":split<CR>", { silent = true })
