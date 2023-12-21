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
    "clangd",
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

require("lspconfig").clangd.setup {
  capabilities = capabilities,
}



local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
