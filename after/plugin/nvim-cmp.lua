-- import nvim-cmp plugin safely
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
return
end-- import luasnip plugin safely
local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
return
end
-- load VSCode-like snippets from plugins (e.g., friendly-snippets)

require("luasnip/loaders/from_vscode").lazy_load()vim.opt.completeopt = "menu,menuone,noselect"cmp.setup({
snippet = {
expand = function(args)
luasnip.lsp_expand(args.body)
end,
},
mapping = cmp.mapping.preset.insert({
["<C-b>"] = cmp.mapping.select_prev_item(), -- previous suggestion
["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion
["<C-k>"] = cmp.mapping.scroll_docs(-4),
["<C-j>"] = cmp.mapping.scroll_docs(4),
["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
["<C-c>"] = cmp.mapping.abort(), -- close completion window
["<CR>"] = cmp.mapping.confirm({ select = false }),
}),
-- sources for autocompletion
sources = cmp.config.sources({
{ name = "nvim_lsp" }, -- LSP
{ name = "luasnip" }, -- snippets
{ name = "buffer" }, -- text within the current buffer
{ name = "path" }, -- file system paths
}),
})
