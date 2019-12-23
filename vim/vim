" Source global Vim files
source ~/dotfiles/vim/bundles.vim
source ~/dotfiles/vim/plugin_edits.vim
source ~/dotfiles/vim/settings.vim
source ~/dotfiles/vim/key_mappings.vim


" Source language-specific settings
for filepath in split(globpath('~/dotfiles/vim/filetypes/', '*.vim'), '\n')
  let filename = split(filepath, '/')[-1]
  let filetype = split(filename, '\V.')[0]
  exe 'au BufRead,BufNewFile *.' . filetype . ' source ' . filepath
endfor
