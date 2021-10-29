if empty(glob("~/.config/nvim/autoload/plug.vim"))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin("~/.config/nvim/plugged")

source $HOME/.config/nvim/plugs/syntax.vim
source $HOME/.config/nvim/plugs/themes.vim
source $HOME/.config/nvim/plugs/visual.vim
source $HOME/.config/nvim/plugs/utils.vim
source $HOME/.config/nvim/plugs/lsp.vim

call plug#end()
