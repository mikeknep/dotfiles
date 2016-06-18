if $COLORSCHEME == "grayscale"
  colorscheme m
  set background=light
  syntax off
else
  colorscheme gruvbox
  let g:gruvbox_italic=0
  set background=dark
  syntax on
endif

function ColorschemeSwap()
  if g:colors_name == "m"
    colorscheme gruvbox
    set background=dark
    syntax on
  elseif g:colors_name == "gruvbox"
    colorscheme m
    set background=light
    syntax off
  endif
endfunction

map <leader>cs :call ColorschemeSwap()<CR>
