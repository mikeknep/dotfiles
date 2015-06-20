" Use rainbow parentheses
RainbowParenthesesActivate
RainbowParenthesesLoadRound
RainbowParenthesesLoadSquare
RainbowParenthesesLoadBraces

" Add keywords to fix indentation in Speclj
setlocal lispwords+=describe,it,context,around,should=,should-not=,should,should-not,should-be,with,run-specs,should-invoke,should-not-invoke,GET,POST,PUT,PATCH,DELETE

" Run current test file (via vim-fireplace)
nmap ,, :RunTests<CR>

" Run all tests (via lein shorthand)
nmap .. :Eval (./refresh) (./run-all-tests)<CR>
