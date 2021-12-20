light_mode() {
  sed -i '' -E "s%colorscheme .*%colorscheme solarized%g" $HOME/dotfiles/.vimrc
  sed -i '' -E "s%set background=.*%set background=light%g" $HOME/dotfiles/.vimrc
  sed -i '' -E "s%colors: .+%colors: \*solarized_light%g" $HOME/dotfiles/.alacritty.yml
  sed -i '' -E "s%source-file .* # colors%source-file ~\\/dotfiles\\/tmux\\/light.conf # colors%g" $HOME/dotfiles/.tmux.conf
  tmux source $HOME/dotfiles/.tmux.conf
}

dark_mode() {
  sed -i '' -E "s%colorscheme .*%colorscheme gruvbox%g" $HOME/dotfiles/.vimrc
  sed -i '' -E "s%set background=.*%set background=dark%g" $HOME/dotfiles/.vimrc
  sed -i '' -E "s%colors: .+%colors: \*gruvbox_dark%g" $HOME/dotfiles/.alacritty.yml
  sed -i '' -E "s%source-file .* # colors%source-file ~\\/dotfiles\\/tmux\\/dark.conf # colors%g" $HOME/dotfiles/.tmux.conf
  tmux source $HOME/dotfiles/.tmux.conf
}
