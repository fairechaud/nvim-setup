-- lsp.lua
require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "pylyzer",
    "tsserver",
    "rust_analyzer",
    "vimls",
    "marksman",
    }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
require("lspconfig").pylyzer.setup {
  capabilities = capabilities,
}
require("lspconfig").marksman.setup {
  capabilities = capabilities,
}
require("lspconfig").rust_analyzer.setup {
  capabilities = capabilities,
}
require("lspconfig").tsserver.setup {
  capabilities = capabilities,
}




local lsp = require('lsp-zero')

lsp.preset('recommended')

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-b>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-c>'] = cmp.mapping.confirm( {select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup()
