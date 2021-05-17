set relativenumber
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

" Mappings
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
map <C-b> :Black <CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

set guifont=FiraCode\ Nerd\ Font\ Mono:h16
let g:neovide_transparency=0.95
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'M',
                \ 'Staged'    :'S',
                \ 'Untracked' :'U',
                \ 'Renamed'   :'R',
                \ 'Unmerged'  :'!=',
                \ 'Deleted'   :'D',
                \ 'Dirty'     :'#',
                \ 'Ignored'   :'I',
                \ 'Clean'     :'C',
                \ 'Unknown'   :'?',
                \ }

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Recent']            },
        \ { 'type': 'dir',       'header': ['   CWD '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

let g:startify_bookmarks = [
    \ { "fc": "~/.config/fish" },
    \ { "nc": "~/.config/nvim" }
    \ ]
let NERDTreeShowHidden=1
" let g:neovide_fullscreen=v:true
let g:python_highlight_all = 1
set colorcolumn=100
let g:vim_isort_map = '<C-i>'
let g:vim_isort_python_version = 'python3'
nnoremap <C-b> :Black<CR>
