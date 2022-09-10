-- Cmp
local cmp = require 'cmp'
local lspkind = require('lspkind')
luasnip = require('luasnip')

cmp.setup({
  snippet = { expand = function(args) luasnip.lsp_expand(args.body) end },

  mapping = {
    ['<C-r>'] = cmp.mapping(function()
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      end
    end),
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
    ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close()
    })
  },

  sources = cmp.config.sources({
    { name = 'nvim_lua' }, { name = 'luasnip' }, { name = 'nvim_lsp' },
    { name = 'path' }, { name = 'buffer' }
  }),

  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text',
    })
  }
})

cmp.setup.cmdline('/', { sources = { { name = 'buffer' } } })

-- This is broken with case-insensitive mode
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({ { name = 'path' } }, { { name = 'cmdline' } })
})

vim.api.nvim_set_hl(0, 'CmpItemKind', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'CmpItemMenu', { ctermfg = 2 })

-- Luasnip
require('luasnip.loaders.from_vscode').lazy_load()

require('cmp_nvim_lsp').update_capabilities(vim.lsp
  .protocol
  .make_client_capabilities())
