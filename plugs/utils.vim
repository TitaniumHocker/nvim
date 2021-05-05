Plug 'neovim/nvim-lspconfig'             " Nvim LSP support config files
Plug 'psf/black', { 'branch': 'stable' } " Black formatter for python files
Plug 'mattn/emmet-vim'                   " Emmet
Plug 'scrooloose/nerdtree',              " NERDTree
            \ { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'       " git integration for nerdtree
Plug 'majutsushi/tagbar'                 " Tags
Plug 'airblade/vim-gitgutter'            " Git
Plug 'wikitopian/hardmode'               " Hardmode, fuck arrows
Plug 'jiangmiao/auto-pairs'              " Autopairs for ({'
Plug 'coddingtonbear/neomake-platformio' " Platformio integration
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'junegunn/fzf',                     " FZF wrapper with cool commands
            \ { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'aurieh/discord.nvim',              " Status for discord
            \ { 'do': ':UpdateRemotePlugins'}
