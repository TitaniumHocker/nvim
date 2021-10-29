" Startify config
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Recent']            },
        \ { 'type': 'dir',       'header': ['   CWD '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

" Bookmarks
let g:startify_bookmarks = [
    \ { "fc": "~/.config/fish" },
    \ { "nc": "~/.config/nvim" }
    \ ]
