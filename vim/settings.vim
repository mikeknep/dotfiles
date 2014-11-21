" Indentation
set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2
filetype plugin indent on

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Visuals
syntax on
colorscheme gruvbox
let g:gruvbox_italic=0
set background=dark
set splitright
set number
set ruler
set showcmd
set list listchars=tab:»·,trail:·

" Movement
set nostartofline
set backspace=indent,eol,start

" Alerts
set confirm

" Trim trailing whitespace on save
autocmd BufWritePre *.* :%s/\s\+$//e

set noswapfile
set clipboard=unnamed
