" Use rainbow parentheses
RainbowParenthesesActivate
RainbowParenthesesLoadRound
RainbowParenthesesLoadSquare
RainbowParenthesesLoadBraces

" Add keywords to fix indentation in Speclj
setlocal lispwords+=describe,it,context,around,should=,should-not=,should,should-not,should-be,with,run-specs

" Run lein spec ASAP
nnoremap <Leader>t :!lein spec<CR>
