# Dotfiles

### Setup

- [ ] Copy ssh keys from old computer to $HOME/.ssh (or generate new ones!)

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

- [ ] Install vim-plug
```sh
# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

- [ ] Install brew deps
```sh
brew bundle --no-lock --cleanup --file $HOME/dotfiles/Brewfile
```

- [ ] Symlink dotfiles
```sh
$HOME/dotfiles/bin/symlink-all.sh
```



### Secrets

Files placed in the `secrets/` directory are gitignored, but sourced by `.zshrc` and `.gitconfig`.
Useful for sensitive data like environment variables, private project gitconfigs, etc.

- `.zshrc` will source all files in the directory ending in `.sh`
- `.gitconfig` will source just one file in the directory named `gitconfig`

Examples:
```
# secrets/foo.sh
export SENSITIVE_GLOBAL_VAR='abc'


# secrets/gitconfig
[includeIf "gitdir:~/sensitive/dir/"]
    path = ~/sensitive/dir/.gitconfig
```
