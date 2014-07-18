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


" When searching in ctrl-p and opening a file that is already open somewhere, jump to it instead of re-opening
let g:ctrlp_switch_buffer = 'ETVH'
