# Dotfiles

### Setup

- [ ] Copy ssh keys from old computer to $HOME/.ssh

- [ ] Install Homebrew
```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

- [ ] Install latest git
```sh
brew install git
```

- [ ] Clone dotfiles
```sh
git clone git@github.com:mikeknep/dotfiles.git $HOME/dotfiles
```

- [ ] Install Vundle
```sh
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
```

- [ ] Symlink dotfiles
- :warning: Needs to be done *after* alacritty has been installed, opened, and FiraCode font has been added, otherwise fails silently
```sh
$HOME/dotfiles/bin/symlink-all.sh
```

- [ ] Install brew deps
```sh
bump
```



### Secrets

Files named `secret*` are gitignored, but sourced by `.zshrc` and `.gitconfig`.
Useful for sensitive data like environment variables, private project gitconfigs, etc.
