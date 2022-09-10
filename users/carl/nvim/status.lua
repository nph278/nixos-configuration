-- Status line (thanks to https://nuxsh.is-a.dev/blog/custom-nvim-statusline.html)
vim.o.laststatus = 3

local modes = {
  ['n'] = 'NORMAL',
  ['no'] = 'NORMAL',
  ['v'] = 'VISUAL',
  ['V'] = 'VISUAL LINE',
  [''] = 'VISUAL BLOCK',
  ['s'] = 'SELECT',
  ['S'] = 'SELECT LINE',
  [''] = 'SELECT BLOCK',
  ['i'] = 'INSERT',
  ['ic'] = 'INSERT',
  ['R'] = 'REPLACE',
  ['Rv'] = 'VISUAL REPLACE',
  ['c'] = 'COMMAND',
  ['cv'] = 'VIM EX',
  ['ce'] = 'EX',
  ['r'] = 'PROMPT',
  ['rm'] = 'MOAR',
  ['r?'] = 'CONFIRM',
  ['!'] = 'SHELL',
  ['t'] = 'TERMINAL'
}

local function mode()
  local current_mode = vim.api.nvim_get_mode().mode
  return string.format(' %s ', modes[current_mode]):upper()
end

local function update_mode_colors()
  local current_mode = vim.api.nvim_get_mode().mode
  local mode_color = '%#StatusLine#'
  if current_mode == 'n' then
    mode_color = '%#StatusLineNormalAccent#'
  elseif current_mode == 'i' or current_mode == 'ic' then
    mode_color = '%#StatusLineInsertAccent#'
  elseif current_mode == 'v' or current_mode == 'V' or current_mode == '' then
    mode_color = '%#StatusLineVisualAccent#'
  elseif current_mode == 'R' then
    mode_color = '%#StatusLineReplaceAccent#'
  elseif current_mode == 'c' then
    mode_color = '%#StatusLineCmdLineAccent#'
  elseif current_mode == 't' then
    mode_color = '%#StatusLineTerminalAccent#'
  end
  return mode_color
end

local function filepath()
  local fpath = vim.fn.fnamemodify(vim.fn.expand "%", ":~:.:h")
  if fpath == "" or fpath == "." then return " " end

  return string.format(" %%<%s/", fpath)
end

local function filename()
  local fname = vim.fn.expand "%:t"
  if fname == "" then return "" end
  return fname .. " "
end

local function filetype() return string.format(" %s ", vim.bo.filetype:upper()) end

local function lineinfo()
  if vim.bo.filetype == "alpha" then return "" end
  return " %l:%c "
end

StatusLine = {}

StatusLine.active = function()
  return table.concat {
    "%#StatusLine#", update_mode_colors(), mode(), "%#Normal# ",
    filepath(), filename(), "%=", filetype(), "%#StatusLineExtra#",
    lineinfo()
  }
end

function StatusLine.inactive() return " %F" end

function StatusLine.short() return "%#StatusLineNC#   NvimTree" end

vim.api.nvim_exec([[
  augroup StatusLine
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.StatusLine.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.StatusLine.inactive()
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.StatusLine.short()
  augroup END
]], false)

vim.api.nvim_set_hl(0, 'StatusLineNormalAccent', { ctermfg = 0, ctermbg = 4 })
vim.api.nvim_set_hl(0, 'StatusLineInsertAccent', { ctermfg = 0, ctermbg = 2 })
vim.api.nvim_set_hl(0, 'StatusLineVisualAccent', { ctermfg = 0, ctermbg = 5 })
vim.api.nvim_set_hl(0, 'StatusLineReplaceAccent', { ctermfg = 0, ctermbg = 1 })
vim.api.nvim_set_hl(0, 'StatusLineCmdLineAccent', { ctermfg = 0, ctermbg = 3 })
vim.api.nvim_set_hl(0, 'StatusLineTerminalAccent', { ctermfg = 0, ctermbg = 6 })
vim.api.nvim_set_hl(0, 'StatusLineExtra', { ctermfg = 0, ctermbg = 7 })
