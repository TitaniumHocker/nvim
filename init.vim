source $HOME/.config/nvim/plugs/init.vim
luafile $HOME/.config/nvim/lsp.lua
source $HOME/.config/nvim/settings/init.vim
if filereadable($HOME."/.config/nvim/local.vim")
    source $HOME/.config/nvim/local.vim
endif
