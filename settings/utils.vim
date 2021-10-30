" Isort plugin configuration
let g:vim_isort_python_version = 'python3'

" Hardmode plugin configuration
let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Fuck arrows, punk!'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
