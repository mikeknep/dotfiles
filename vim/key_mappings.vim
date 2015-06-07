" Show/hide NERDTree
map <leader><leader> :NERDTreeToggle<CR>

" Ctrl-C to exit insert mode
imap <C-c> <ESC>
let g:ftplugin_sql_omni_key = '<C-j>'

" Toggle rainbow-parentheses
map <leader>r :RainbowParenthesesToggle<CR> :RainbowParenthesesLoadRound<CR> :RainbowParenthesesLoadSquare<CR> :RainbowParenthesesLoadBraces<CR>

" Ctrl-f for find/replace
nmap <C-f><C-r> :%s/
vmap <C-F><C-R> :s/
