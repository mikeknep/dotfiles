" Show/hide NERDTree
map <leader><leader> :NERDTreeToggle<CR>

" Ctrl-C to exit insert mode
imap <C-c> <ESC>

" Toggle rainbow-parentheses
map <leader>r :RainbowParenthesesToggle<CR> :RainbowParenthesesLoadRound<CR> :RainbowParenthesesLoadSquare<CR> :RainbowParenthesesLoadBraces<CR>

" Ctrl-(h/l) to navigate tabs left/right (mimic general movement and pane switching)
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>

" Ctrl-n for new tab
map <C-n> :tabnew<CR>

" Ctrl-f for find/replace
map <C-f><C-r> :%s/

" Ctrl-y to print out YOLO (filetype-specific)
map <C-y> :YOLO<CR>
