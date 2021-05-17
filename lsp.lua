local lspconfig = require('lspconfig')

lspconfig.vimls.setup{on_attach=require('completion').on_attach}
lspconfig.clangd.setup{on_attach=require('completion').on_attach}
lspconfig.perlls.setup{on_attach=require('completion').on_attach}
lspconfig.html.setup{on_attach=require('completion').on_attach}
lspconfig.tsserver.setup{on_attach=require('completion').on_attach}
lspconfig.vuels.setup{on_attach=require('completion').on_attach}
lspconfig.pyls.setup{
    on_attach=require('completion').on_attach,
    root_dir=lspconfig.util.root_pattern('Pipfile') 
        or lspconfig.util.root_pattern('pyproject.toml')
        or lspconfig.util.root_pattern('setup.py')
        or lspconfig.util.root_pattern('.git'),
}
