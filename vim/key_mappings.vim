" Show/hide NERDTree
map <leader><leader> :NERDTreeToggle<CR>

" Toggle rainbow-parentheses
map <leader>r :RainbowParenthesesToggle<CR> :RainbowParenthesesLoadRound<CR> :RainbowParenthesesLoadSquare<CR> :RainbowParenthesesLoadBraces<CR>

" Ctrl-f for find/replace
nmap <C-f><C-r> :%s/
vmap <C-f><C-r> :s/

" Refresh .vimrc
map <leader>vs :source $MYVIMRC<CR>

" Searching
map <c-p> :execute 'FZF'<CR>
nmap <silent> <Leader>s :execute 'FindUnderCursor'<CR>
vmap <silent> <Leader>s :call FindText()<CR>
