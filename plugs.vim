" File with list of all used plugins
if empty(glob("~/.config/nvim/autoload/plug.vim"))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin("~/.config/nvim/plugged")

" Colorschemes and visual things
Plug 'flazz/vim-colorschemes'            " 1000 colorschemes
Plug 'morhetz/gruvbox'                   " Gruvbox colorcheme
Plug 'junegunn/seoul256.vim'             " Seoul 256 colorcheme
Plug 'nightsense/rusticated'             " Rusticated colorcheme
Plug 'kyazdani42/nvim-web-devicons'      " More icons
Plug 'aurieh/discord.nvim',              " Status for discord
            \ { 'do': ':UpdateRemotePlugins'}

" Syntax support
Plug 'mitsuhiko/vim-jinja'               " Jinja syntax support
Plug 'saltstack/salt-vim'                " Salt (sls) syntax support
Plug 'chr4/nginx.vim'                    " NGINX configs syntax
Plug 'nvim-treesitter/nvim-treesitter',  " Treesitter integration
            \ {'do': ':TSUpdate'}

" Utils
Plug 'nvim-lualine/lualine.nvim'         " Lualine, instead of airline
Plug 'romgrk/barbar.nvim'                " Super tabs bar
Plug 'kyazdani42/nvim-tree.lua'          " Files tree
Plug 'majutsushi/tagbar'                 " Tags via ctags
Plug 'mhinz/vim-startify'                " Awesome start screen
Plug 'fisadev/vim-isort'                 " Isort import in python files
Plug 'mattn/emmet-vim'                   " Emmet
Plug 'wikitopian/hardmode'               " Hardmode, fuck arrows
Plug 'jiangmiao/auto-pairs'              " Autopairs for ({'
Plug 'tpope/vim-fugitive'                " Git wrapper
Plug 'nvim-lua/plenary.nvim'             " For telescope
Plug 'nvim-telescope/telescope.nvim'     " Fuzzy finder
Plug 'nvim-telescope/telescope-fzf-native.nvim',
            \ { 'do': 'make' }
Plug 'mhartington/formatter.nvim'        " Files formatter

" LSP
Plug 'neovim/nvim-lspconfig'             " Default configurations
Plug 'glepnir/lspsaga.nvim'              " GoTo def, etc
Plug 'ms-jpq/coq_nvim',                  " Fast as FUCK autocompletion
            \ {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts',             " 9000+ Snippets
            \ {'branch': 'artifacts'}

" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
" Need to **configure separately**
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
" - shell repl
" - nvim lua api
" - scientific calculator
" - comment banner
" - etc

call plug#end()

