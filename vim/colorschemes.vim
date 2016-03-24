if $COLORSCHEME == "grayscale"
  colorscheme pencil
  set background=light
  syntax off
else
  colorscheme gruvbox
  let g:gruvbox_italic=0
  set background=dark
  syntax on
endif

function SwapColors()
  if g:colors_name == "pencil"
    colorscheme gruvbox
    set background=dark
    syntax on
  elseif g:colors_name == "gruvbox"
    colorscheme pencil
    set background=light
    syntax off
  endif
endfunction

map <leader>cs :call SwapColors()<CR>
