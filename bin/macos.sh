# Copy ssh keys from old computer to $HOME/.ssh


# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Install latest git
brew install git


# Clone dotfiles
git clone git@github.com:mikeknep/dotfiles.git $HOME/dotfiles


# Install stuff via brew
brew bundle $HOME/dotfiles/Brewfile --force


# Install latest bash
vim /etc/shells
# Add `/usr/local/bin/bash` to /etc/shells
chsh -s /usr/local/bin/bash


# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim


# Set up bash profile
cat >$HOME/.bash_profile <<EOF
if [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi
EOF


# Install Fira Code
# https://github.com/tonsky/FiraCode
# Add all of the ttf fonts from the downloaded zip to FontBook


# Symlink dotfiles
# NOTE: Needs to be done *after* alacritty has been installed, opened, and FiraCode font has been added, otherwise fails silently
$HOME/dotfiles/bin/symlink-all.sh
