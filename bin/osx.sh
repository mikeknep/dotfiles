###################
## PREREQUISITES ##
###################
# Install Xcode command line tools
#     sudo xcode-select --install
# Copy ssh keys
# Clone down dotfiles
#     git clone git@github.com:mikeknep/dotfiles.git ~/dotfiles


echo Installing Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update


echo Installing latest bash
brew install bash
echo /usr/local/bin/bash >> /etc/shells     # This might need `sudo`, or even an earlier instruction giving write access to this file
chsh -s /usr/local/bin/bash


echo Symlinking dotfiles
~/dotfiles/bin/symlink-all.sh


echo Installing Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


echo Adding bash profile
cat >~/.bash_profile <<EOF
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
EOF


echo Installing via brew
brew install awscli jq tmux caskroom/cask/brew-cask

echo Installing via brewcask
brew cask install alacritty alfred brave-browser
