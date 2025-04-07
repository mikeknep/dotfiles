bump() {
  brew bundle --cleanup --file $HOME/dotfiles/Brewfile
  rbenv rehash
  rustup update
}
