lua << EOF
require('lspsaga').init_lsp_saga {
    border_style = 'round'
}
EOF

nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent> K :Lspsaga hover_doc<CR>
nnoremap <silent> <leader>ca :Lspsaga code_action<CR>
nnoremap <silent> gd :Lspsaga preview_definition<CR>
