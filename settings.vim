set number
autocmd TermOpen * setlocal nonumber norelativenumber
set expandtab
set shiftwidth=4
set tabstop=4
syntax on
set hlsearch
set incsearch
set clipboard+=unnamed
" set showtabline=2
if has('mouse')
    set mouse=a
endif
" set updatetime=100
set lazyredraw
set ttyfast

" Tab = 2 space for some filetypes
autocmd FileType
    \ html,jinja.html,css,c,cpp,js,yml,yaml,toml,sls,tt,tt2,tt2html,html.j2,javascript
    \ setlocal shiftwidth=2 softtabstop=2

" Hardmode config
let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Fuck arrows, punk!'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Pymode config
" let g:python3_host_prog = '/usr/sbin/python'
" let g:pymode_options_max_line_length = 100
" let g:pymode_lint = 0 " Disable linters in Pymode, COC used

" Some snippets configuration
let g:UltiSnipsExpandTrigger="<C-s>"
let g:UltiSnipsJumpForwardTrigger="<C-]>"
let g:UltiSnipsJumpBackwardTrigger="<C-[>"

" For templatetoolkit files
augroup tt_ft
  au!
  autocmd BufNewFile,BufRead *.tt   setf tt2html
augroup END

" Enable spell check for text files
set spelllang=en_us,ru_ru
autocmd FileType text,md,rst set spell

" Theme configuration
if has("termguicolors")
    set termguicolors
endif

colorscheme gruvbox
" colorscheme rusticated
" let g:airline_theme='rusticated'
let g:airline_powerline_fonts = 1

" Some search tuning

" Mappings
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
map <C-b> :Black <CR>

