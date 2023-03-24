vim.opt.completeopt = "menu,menuone,noselect"

-- auto pairing
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
require("nvim-autopairs").setup {}

local cmp = require'cmp'
cmp.event:on(
'confirm_done',
cmp_autopairs.on_confirm_done()
)
cmp.setup({
   view = {
      entries = "native" -- can be "custom", "wildmenu" or "native"
   },
   window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
   },
   snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
	      vim.fn["UltiSnips#Anon"](args.body)
      end,
   },
   formatting = {
      format = require('lspkind').cmp_format(),
   },
   mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
   }),
   experimental = {
      native_menu = false,
      ghost_text = true,
   },

   sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'nvim_lsp_signature_help' },
      { name = 'path' },
      { name = 'ultisnips' }
   }, {
   { name = 'buffer', keyword_length = 5 },
})  })



local lsp_status = require("lsp-status")
lsp_status.register_progress()
require("fidget").setup{}
