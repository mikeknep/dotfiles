bump() {
  brew bundle --no-lock --cleanup --file $HOME/dotfiles/Brewfile
  pyenv rehash
  rbenv rehash
  rustup update
}
