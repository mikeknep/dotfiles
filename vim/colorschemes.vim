let iterm_profile=$ITERM_PROFILE
if iterm_profile == 'DevLight'
  colorscheme bplight
  set background=light
else
  colorscheme gruvbox
  let g:gruvbox_italic=0
  set background=dark
endif

function SwapColors()
  if g:colors_name == "bplight"
    colorscheme gruvbox
    set background=dark
  elseif g:colors_name == "gruvbox"
    colorscheme bplight
    set background=light
  endif
endfunction

map <leader>cs :call SwapColors()<CR>
