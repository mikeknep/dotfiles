#!/usr/bin/env bash

# This lightweight script is specifically for configuring GitHub Codespaces.
# It does not set up the entire repository for local Mac use.


# Aliases
cat ./shell/alias.sh >> ~/.bashrc

# Git
curl -sS https://webinstall.dev/delta | bash
echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
cp ./.gitconfig ~/.gitconfig

# Starship prompt
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
cp ./starship.toml ~/.config/starship.toml
