" Use rainbow parentheses in clojure files
autocmd BufRead,BufNewFile *.clj RainbowParenthesesActivate
autocmd BufRead,BufNewFile *.clj RainbowParenthesesLoadRound
autocmd BufRead,BufNewFile *.clj RainbowParenthesesLoadSquare
autocmd BufRead,BufNewFile *.clj RainbowParenthesesLoadBraces

" Add keywords to fix indentation in Speclj
autocmd BufRead,BufNewFile *.clj setlocal lispwords+=describe,it,context,around,should=,should-not=,should,should-not,should-be,with,run-specs

" Run lein spec ASAP
nnoremap <Leader>t :!lein spec<CR>
