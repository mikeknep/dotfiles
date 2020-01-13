# Copy ssh keys from old computer to ~/.ssh


# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Install latest git
brew install git


# Clone dotfiles
git clone git@github.com:mikeknep/dotfiles.git ~/dotfiles


# Install latest bash
brew install bash
sudo vim /etc/shells
# Add `/usr/local/bin/bash` to /etc/shells
chsh -s /usr/local/bin/bash


# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# Set up bash profile
cat >~/.bash_profile <<EOF
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
EOF


# Install some tools via brew
brew install awscli jq reattach-to-user-namespace tmux warrensbox/tap/tfswitch


# Install some apps via brewcask
brew cask install 1password alacritty alfred brave-browser docker dropbox fantastical keybase postico slack spotify tuple zoomus


# Install Fira Code
# https://github.com/tonsky/FiraCode
# Add all of the ttf fonts from the downloaded zip to FontBook


# Symlink dotfiles
# NOTE: Needs to be done *after* alacritty has been installed, opened, and FiraCode font has been added, otherwise fails silently
~/dotfiles/bin/symlink-all.sh
