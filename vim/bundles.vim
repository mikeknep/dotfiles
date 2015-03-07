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

Plugin 'morhetz/gruvbox'                " Color scheme
Plugin 'kien/rainbow_parentheses.vim'   " Highlight matching parentheses
Plugin 'guns/vim-clojure-static'        " Clojure syntax highlighting
Plugin 'kchmck/vim-coffee-script'       " Coffeescript syntax highlighting
Plugin 'elixir-lang/vim-elixir'         " Elixir syntax highlighting
Plugin 'wting/rust.vim'                 " Rust syntax highlighting


" End vundle and reset filetype on
call vundle#end()
filetype on
