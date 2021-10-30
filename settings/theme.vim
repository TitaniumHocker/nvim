" Theme configuration
if has("termguicolors")
    set termguicolors
endif
syntax enable
let g:python_highlight_all = 1
set colorcolumn=100
colorscheme gruvbox
set background=dark
let g:gruvbox_transparent_bg = 1
" colorscheme rusticated
" let g:airline_theme='rusticated'
let g:airline_powerline_fonts = 1

" Neovide configuration
set guifont=Fira\ Code\ SemiBold:h12
let g:neovide_transparency=0.90
let neovide_remember_window_size = v:true
