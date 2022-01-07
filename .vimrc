" Plugins, using vim-plug
call plug#begin("~/.vim/plugged")

Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'elmcast/elm-vim'
Plug 'fatih/vim-go'
Plug 'felipesere/search'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/tComment'
Plug 'sheerun/vim-polyglot'

if has("nvim")
  Plug 'nvim-lua/lsp_extensions.nvim'
  Plug 'nvim-lua/completion-nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'
endif

call plug#end()
filetype plugin indent on


if has("nvim")
  source $HOME/dotfiles/neovim/main.lua
endif


" Formatting on save is good for you
let g:elm_format_autosave = 1
let g:go_fmt_autosave = 1
let g:rustfmt_autosave = 1
let g:terraform_align=1
let g:terraform_fmt_on_save=1
autocmd BufWritePre *.* :%s/\s\+$//e " Trim trailing whitespace


" nerdtree
let NERDTreeShowHidden=1


" Colors
syntax on
let g:gruvbox_italic=0
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
set background=dark
hi! link markdownBold GruvboxRed
hi! link markdownItalic GruvboxOrange
hi! link markdownCode GruvboxBlue
hi! link markdownCodeBlock GruvboxBlue
hi! link markdownCodeDelimiter GruvboxBlue
let g:markdown_fenced_languages = ['elm', 'json', 'python', 'ruby', 'rust', 'go', 'sh', 'sql']


" Indentation
set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2
set tabstop=2


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
set scrolloff=4


" Misc
set clipboard=unnamed
set confirm
set hidden
set noswapfile


" Key mappings

" Show/hide NERDTree
map <leader><leader> :NERDTreeToggle<CR>

" Ctrl-f-r for find/replace
nmap <C-f><C-r> :%s/
vmap <C-f><C-r> :s/

" Searching
map <c-p> :execute 'FZF'<CR>
nmap <silent> <Leader>s :execute 'FindUnderCursor'<CR>
vmap <silent> <Leader>s :call FindText()<CR>
