" Show/hide NERDTree
map <leader><leader> :NERDTreeToggle<CR>

" Ctrl-C to exit insert mode
imap <C-c> <ESC>

" Toggle rainbow-parentheses
map <leader>r :RainbowParenthesesToggle<CR> :RainbowParenthesesLoadRound<CR> :RainbowParenthesesLoadSquare<CR> :RainbowParenthesesLoadBraces<CR>

" Tabs
map <leader>tn :tabnew<CR>
map <leader>th :tabp<CR>
map <leader>tl :tabn<CR>

" Ctrl-f for find/replace
map <C-f><C-r> :%s/

" Ctrl-y to print out YOLO (filetype-specific)
map <C-y> :YOLO<CR>
