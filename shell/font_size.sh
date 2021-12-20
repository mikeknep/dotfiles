presentation_mode() {
  sed -i '' -E "s/size: [0-9]+/size: 18/g" $HOME/dotfiles/.alacritty.yml
}
normal_mode() {
  sed -i '' -E "s/size: [0-9]+/size: 14/g" $HOME/dotfiles/.alacritty.yml
}
