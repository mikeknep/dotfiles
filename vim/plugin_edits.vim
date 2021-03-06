" ctrlp
" Interpret spaces as underscores when searching with ctrl-p
let g:ctrlp_abbrev = {
    \ 'gmode': 't',
    \ 'abbrevs': [
        \ {
        \ 'pattern': '\(^@.\+\|\\\@<!:.\+\)\@<! ',
        \ 'expanded': '_',
        \ 'mode': 'pfrz',
        \ },
        \ ]
    \ }


" elm
let g:elm_format_autosave = 1


" gruvbox
hi! link markdownBold GruvboxRed
hi! link markdownItalic GruvboxOrange

hi! link markdownCode GruvboxBlue
hi! link markdownCodeBlock GruvboxBlue
hi! link markdownCodeDelimiter GruvboxBlue


" markdown
let g:markdown_fenced_languages = ['elm', 'json', 'python', 'ruby', 'rust', 'scala', 'sh', 'sql']


" nerdtree
let NERDTreeShowHidden=1


" paredit
let g:paredit_leader = ','


" rainbow parentheses
" Remove black (unreadable on dark background)
" Remove red (too similar to darkred)
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ]
let g:rbpt_max = 14


" terraform
let g:terraform_fmt_on_save=1
let g:terraform_align=1
