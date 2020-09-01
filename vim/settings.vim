" Colors
syntax on
let g:gruvbox_italic=0
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
set background=dark


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
set splitright
set number
set showcmd
set list listchars=tab:»·,trail:·
set nowrap

" Movement
set nostartofline
set backspace=indent,eol,start

" Alerts
set confirm

" Trim trailing whitespace on save
autocmd BufWritePre *.* :%s/\s\+$//e

set noswapfile
set clipboard=unnamed
