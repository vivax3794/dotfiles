vim.g.rustfmt_autosave = 1

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_status = require("lsp-status")

local rt = require("rust-tools")

rt.setup({
   server = {
      capabilities = capabilities,
      on_attach = function(idk, bufnr)
	      lsp_status.on_attach(idk, bufnr)
	      -- Hover actions
	      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
	      -- Code action groups
	      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
	      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = bufnr})
      end,
   settings = {
      ["rust-analyzer"] = {
	 check = {
	    command = "clippy"
	 }
      },
   },
   },
})

vim.diagnostic.config({
   float = {
      source = "always",
      border = "rounded",
      prefix = "",
   }
})

