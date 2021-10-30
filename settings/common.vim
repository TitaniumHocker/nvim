" Line numbers setup
set relativenumber
set nu

" Tabs configuration
set expandtab
set shiftwidth=4
set tabstop=4
set smartindent

" Tab = 2 space for some filetypes
autocmd FileType
    \ html,jinja.html,css,c,cpp,js,yml,yaml,toml,sls,tt,tt2,tt2html,html.j2,javascript
    \ setlocal shiftwidth=2 softtabstop=2

" Search tweaks
set hlsearch
set incsearch

" Unified clipboard
set clipboard+=unnamed

" Enable mouse support
if has('mouse')
    set mouse=a
endif

" Perfomance tweaks
set updatetime=50
set lazyredraw
set ttyfast

" Spelling languages
set spelllang=en_us,ru_ru

" Keep unsaved buffers in the background
set hidden

" Force lines wrapping
set wrap

" Scrolling padding
set scrolloff=8

" Fuck this shit
set noerrorbells
