bump() {
  brew bundle --cleanup --file $HOME/dotfiles/Brewfile
  rustup update
}
