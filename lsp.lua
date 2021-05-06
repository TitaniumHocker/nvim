require('lspconfig').vimls.setup{on_attach=require('completion').on_attach}
require('lspconfig').pyls.setup{on_attach=require('completion').on_attach}
require('lspconfig').clangd.setup{on_attach=require('completion').on_attach}
