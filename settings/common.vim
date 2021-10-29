" Line numbers setup
set relativenumber

" Tabs configuration
set expandtab
set shiftwidth=4
set tabstop=4

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
" set updatetime=100
set lazyredraw
set ttyfast

" Autoconfigure window with terminal
autocmd TermOpen * setlocal nonumber norelativenumber

" Set filetype for template toolkit files
augroup tt_ft
  au!
  autocmd BufNewFile,BufRead *.tt   setf tt2html
augroup END

" Enable spell check for text files
set spelllang=en_us,ru_ru
autocmd FileType text,md,rst set spell
