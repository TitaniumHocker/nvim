" auto install plugins manager

if $XDG_DATA_HOME != ""
    let vim_plug_path = $XDG_DATA_HOME."/nvim/site/autoload/plug.vim"
else
    let vim_plug_path = $HOME."/.local/share/nvim/site/autoload/plug.vim"
endif

if empty(glob($vim_plug_path))
    silent !curl -fLo $vim_plug_path --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

let plugsdir = $HOME."/.config/nvim/plugs"
let pluggeddir = $HOME."/.config/nvim/plugged"

call plug#begin($pluggeddir)

source $plugsdir."syntax.vim"
source $plugsdir."themes.vim"
source $plugsdir."visual.vim"
source $plugsdir."utils.vim"

call plug#end()
