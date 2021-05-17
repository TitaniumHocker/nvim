local lspconfig = require('lspconfig')

lspconfig.vimls.setup{on_attach=require('completion').on_attach}
lspconfig.clangd.setup{on_attach=require('completion').on_attach}
lspconfig.perlls.setup{on_attach=require('completion').on_attach}
lspconfig.html.setup{on_attach=require('completion').on_attach}
lspconfig.tsserver.setup{on_attach=require('completion').on_attach}
lspconfig.vuels.setup{on_attach=require('completion').on_attach}
lspconfig.pylsp.setup{
    on_attach=require('completion').on_attach,
    settings={
        plugins={
            pyflakes={enabled=false},
            yapf={enabled=false},
            pycodestyle={enabled=false},
            pylint={enabled=false},
            pydocstyle={enabled=true},
            mccabe={enabled=true},
            flake8={enabled=true}
        }
    }
}
