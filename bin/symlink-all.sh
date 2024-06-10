mkdir -p $HOME/.config/{nvim,tmux}

ln -sf $HOME/dotfiles/alacritty/alacritty.toml $HOME/.alacritty.toml
ln -sf $HOME/dotfiles/alacritty/dark.toml $HOME/.alacritty-theme.toml
ln -sf $HOME/dotfiles/alacritty/font_size.toml $HOME/.alacritty-font-size.toml
ln -sf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -sf $HOME/dotfiles/.tmux.conf $HOME/.config/tmux/tmux.conf
ln -sf $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/init.lua $HOME/.config/nvim/init.lua
ln -sf $HOME/dotfiles/nvim/lua $HOME/.config/nvim/lua
ln -sf $HOME/dotfiles/starship.toml $HOME/.config/starship.toml
ln -sf $HOME/dotfiles/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
ln -sf $HOME/dotfiles/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
