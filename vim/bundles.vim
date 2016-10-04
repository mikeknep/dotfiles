" Required startup settings for Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Vundle plugins
Plugin 'gmarik/vundle.vim'              " Vundle itself
Plugin 'kien/ctrlp.vim'                 " Fuzzy search
Plugin 'scrooloose/nerdtree'            " NERDTree file directory
Plugin 'christoomey/vim-tmux-navigator' " Navigate between vim and tmux seamlessly
Plugin 'tpope/vim-fireplace'            " Quasi-REPL for Clojure
Plugin 'vim-scripts/tComment'           " Toggle comment
Plugin 'yegappan/mru'                   " Most recently used files
Plugin 'morhetz/gruvbox'                " Pretty colors
Plugin 'hkgumbs/vim-colors-m'           " Pretty grayscale
Plugin 'kien/rainbow_parentheses.vim'   " Highlight matching parentheses
Plugin 'vim-scripts/paredit.vim'        " Lisp editing
Plugin 'tpope/vim-fugitive'             " Git functionality
Plugin 'racer-rust/vim-racer'           " Rust code completion

"" syntax highlighting
Plugin 'guns/vim-clojure-static'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elixir-lang/vim-elixir'
Plugin 'wting/rust.vim'
Plugin 'tpope/vim-markdown'
Plugin 'derekwyatt/vim-scala'
Plugin 'elmcast/elm-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'toyamarinyon/vim-swift'
Plugin 'stanangeloff/php.vim'
Plugin 'jwalton512/vim-blade'

" End vundle and reset filetype on
call vundle#end()
filetype on
