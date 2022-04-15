#!/usr/bin/env bash

# This script is for configuring GitHub Codespaces.
# It does not set up the entire repository for local Mac use.


# Install some dependencies
curl -sS https://webinstall.dev/delta | bash

curl -sS https://starship.rs/install.sh | sh -s -- -y

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
mv squashfs-root /
ln -s /squashfs-root/AppRun /usr/bin/nvim


# Symlink dotfiles
dotfiles_dir=$(dirname "$(readlink -f "$0")")
$dotfiles_dir/bin/symlink-all.sh
ln -s /workspaces/.codespaces/.persistedshare/dotfiles ~/dotfiles
