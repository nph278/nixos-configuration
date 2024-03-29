vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "flake.lock" },
  callback = function() vim.cmd("setf json") end
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "Cargo.lock" },
  callback = function() vim.cmd("setf toml") end
})


-- Incorrect, but helpful
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "tuir.conf" },
  callback = function() vim.cmd("setf asm") end
})
