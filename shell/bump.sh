bump() {
  brew bundle --no-lock --cleanup --file $HOME/dotfiles/Brewfile
  rbenv rehash
  rustup update
}
