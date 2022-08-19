-- LSP
-- Servers: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local nvim_lsp = require('lspconfig')

local on_attach = function(_, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  -- Mappings.
  local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'g[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', 'g]', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<C-f>', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  buf_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
end

nvim_lsp.rust_analyzer.setup {
  settings = {
    ["rust-analyzer"] = {
      workspace = { symbol = { search = { kind = "all_symbols" } } }
    }
  },
  on_attach = on_attach,
  flags = { debounce_text_changes = 150 }
}
nvim_lsp.sumneko_lua.setup {
  formatting = "",
  settings = {
    Lua = {
      runtime = { version = "LuaJIT", path = vim.split(package.path, ';') },
      completion = { keywordSnippet = "Disable" },
      diagnostics = {
        enable = true,
        globals = { "vim", "describe", "it", "before_each", "after_each" }
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.expand("$VIMRUNTIME/lua/vim"),
          vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")
        }
      }
    }
  },
  on_attach = on_attach,
  flags = { debounce_text_changes = 150 }
}
nvim_lsp.rnix.setup {
  on_attach = on_attach,
  flags = { debounce_text_changes = 150 }
}
-- nvim_lsp.pylsp.setup {
--   on_attach = on_attach,
--   flags = { debounce_text_changes = 150 }
-- }

vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultError', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultWarning', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultHint', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultInformation', { ctermfg = 4 })
