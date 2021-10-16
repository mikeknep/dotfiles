" Required startup settings for Vundle
set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()


" Vundle plugins
Plugin 'VundleVim/Vundle.vim'           " Vundle itself
Plugin 'scrooloose/nerdtree'            " NERDTree file directory
Plugin 'christoomey/vim-tmux-navigator' " Navigate between vim and tmux seamlessly
Plugin 'tpope/vim-fireplace'            " Quasi-REPL for Clojure
Plugin 'vim-scripts/tComment'           " Toggle comment
Plugin 'morhetz/gruvbox'                " Pretty dark colors
Plugin 'altercation/vim-colors-solarized' " Pretty light colors
Plugin 'hkgumbs/vim-colors-m'           " Pretty grayscale
Plugin 'kien/rainbow_parentheses.vim'   " Highlight matching parentheses
Plugin 'vim-scripts/paredit.vim'        " Lisp editing
Plugin 'tpope/vim-fugitive'             " Git functionality
Plugin 'racer-rust/vim-racer'           " Rust code completion
Plugin 'hashivim/vim-terraform'         " Terraform integration
Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'felipesere/search'
Plugin 'neoclide/coc.nvim'
Plugin 'rust-lang/rust.vim'


"" syntax highlighting
Plugin 'guns/vim-clojure-static'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-markdown'
Plugin 'derekwyatt/vim-scala'
Plugin 'elmcast/elm-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'toyamarinyon/vim-swift'
Plugin 'stanangeloff/php.vim'
Plugin 'jwalton512/vim-blade'
Plugin 'leafgarland/typescript-vim'

" End vundle and reset filetype on
call vundle#end()
filetype plugin indent on
