#!/usr/bin/env bash

# This script is for configuring GitHub Codespaces.
# It does not set up the entire repository for local Mac use.


# Install some dependencies
curl -sS https://webinstall.dev/delta | bash

curl -sS https://starship.rs/install.sh | sh -s -- -y


# Symlink dotfiles
dotfiles_dir=$(dirname "$(readlink -f "$0")")
$dotfiles_dir/bin/symlink-all.sh
ln -s /workspaces/.codespaces/.persistedshare/dotfiles ~/dotfiles


# Edit with VS Code
echo "export EDITOR='code --wait'" >> ~/dotfiles/secrets/codespace_overrides.sh
echo "export GIT_EDITOR='code --wait'" >> ~/dotfiles/secrets/codespace_overrides.sh
