-- LightSpeed.nvim
require 'lightspeed'.setup {
  ignore_case = true,
  exit_after_idle_msecs = { unlabeled = 1000, labeled = nil },
  --- s/x ---
  jump_to_unique_chars = { safety_timeout = 400 },
  match_only_the_start_of_same_char_seqs = true,
  force_beacons_into_match_width = false,
  substitute_chars = { ['\r'] = '¬' },
  special_keys = { next_match_group = '<space>', prev_match_group = '<tab>' },
  --- f/t ---
  limit_ft_matches = 4,
  repeat_ft_with_target_char = false
}
vim.api.nvim_set_hl(0, 'LightspeedLabel', { ctermfg = 3, cterm = { bold = true, underline = true } })
vim.api.nvim_set_hl(0, 'LightspeedDistant', { ctermfg = 6, cterm = { bold = true, underline = true } })
vim.api.nvim_set_hl(0, 'LightspeedShortcut', { ctermfg = 0, ctermbg = 3, cterm = { bold = true, underline = true } })
vim.api.nvim_set_hl(0, 'LightspeedMaskedChar', { ctermfg = 8, ctermbg = 3, cterm = { bold = true, underline = true } })
vim.api.nvim_set_hl(0, 'LightspeedGreyWash', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'LightspeedGreyWash', { ctermfg = 8, cterm = { bold = true, underline = true } })
vim.api.nvim_set_hl(0, 'LightspeedUnlabeledMatch', { ctermfg = 7, cterm = { bold = true } })
vim.api.nvim_set_hl(0, 'LightspeedOneCharMatch', { ctermfg = 0, ctermbg = 3, cterm = { bold = true } })
vim.api.nvim_set_hl(0, 'LightspeedUniqueChar', { ctermfg = 7, cterm = { bold = true } })
