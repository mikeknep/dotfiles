# PREREQUISITES
# Install Xcode command line tools
  # sudo xcode-select --install     << does that work?
# Copy ssh keys
# Clone down dotfiles (`git clone git@github.com:mikeknep/dotfiles.git ~/dotfiles`)

echo "Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update


echo "Installing latest bash"
brew install bash
echo /usr/local/bin/bash >> /etc/shells     # This might need `sudo`, or even an earlier instruction giving write access to this file
chsh -s /usr/local/bin/bash


echo "Symlinking dotfiles"
declare -A configs=( ["bash"]=".bashrc" ["vim"]=".vimrc" ["rspec"]=".rspec" ["git"]=".gitconfig" ["tmux"]=".tmux.conf" )
for groupname in "${!configs[@]}"
do
  filename="${configs["$groupname"]}"
  if [ -f ~/$filename ]
  then
    echo "Deleting existing $filename file"
    rm ~/$filename
    echo "Successfully deleted existing $filename file"
  else
    echo "No existing $filename file found"
  fi
  echo "Creating symlink to dotfiles' $groupname settings"
  ln -s ~/dotfiles/$groupname/$groupname ~/$filename
  echo "Symlink created successfully"
done


echo "Adding bash profile"
cat >~/.bash_profile <<EOF
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
EOF


echo "Installing brew packages"
brew install tmux rbenv ruby-build mysql postgresql leiningen heroku-toolbelt caskroom/cask/brew-cask


echo "Installing apps via brewcask"
brew cask install iterm2 alfred google-chrome


echo "TODO:"
echo "Install gruvbox colorscheme for iTerm2"
echo "https://raw.githubusercontent.com/morhetz/gruvbox-generalized/master/iterm2/gruvbox-dark.itermcolors"
echo "Install Fira Mono font"
echo "http://www.fontsquirrel.com/fonts/fira-mono"
