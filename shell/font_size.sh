font_size() {
  sed -i '' -E "s/size = [0-9]+/size = $1/g" $HOME/.alacritty-font-size.toml
  touch $HOME/.alacritty.toml
}

presentation_mode() {
  font_size 18
}

normal_mode() {
  font_size 14
}

