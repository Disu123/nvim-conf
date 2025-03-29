return {
	{
	'williamboman/mason.nvim',
	config = function()
	  require("mason").setup()
	end,
	},
{
  "williamboman/mason-lspconfig.nvim",
  config = function()
   require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "clangd", "pyright", "ruff", "cssls", "html", "bashls", "eslint", "asm_lsp", "ts_ls" }
	})
  end,
},
 {
 "neovim/nvim-lspconfig",
 	config = function()
 		local lspconfig = require("lspconfig")
		 lspconfig.lua_ls.setup({})
		 lspconfig.clangd.setup({})
		 lspconfig.pyright.setup({})
		 lspconfig.ruff.setup({})
		 lspconfig.cssls.setup({})
		 lspconfig.html.setup({})
		 lspconfig.bashls.setup({})
		 lspconfig.ts_ls.setup({})
		 lspconfig.eslint.setup({})
		 lspconfig.asm_lsp.setup({})
		 -- keymaps
		 -- vim.keymap.set('n', '', {})
		 vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
		 vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
		 vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
		 vim.keymap.set('n', '<leader>ds', vim.lsp.buf.document_symbol, {})
		 vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {})
		 -- vim.keymap.set('n', 'gf', vim.lsp.buf.formatting, {})
		 vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
      -- blink.lua
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      capabilities = capabilities

 	end,
	}
}

