" Install and enable plugins
runtime ./plugs.vim

" Settings
runtime! ./settings/*

" Local .vim config
if filereadable($HOME."/.config/nvim/local.vim")
    source $HOME/.config/nvim/local.vim
endif

" Local .lua config
if filereadable($HOME."/.config/nvim/local.lua")
    luafile $HOME/.config/nvim/local.lua
endif
