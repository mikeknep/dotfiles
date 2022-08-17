# Dotfiles

### Setup

- [ ] Create new ssh key and add to GitHub
```sh
ssh-keygen -t ed25519 -C "<description>"
```
Be sure to create a `~/.ssh/config` file if you use a non-standard key name (e.g. "github")
```sh
Host github.com
    Hostname github.com
    IdentityFile ~/.ssh/github
```

- [ ] Install [Homebrew](https://brew.sh)

- [ ] Clone dotfiles
```sh
git clone git@github.com:mikeknep/dotfiles.git $HOME/dotfiles
```

- [ ] Install [vim-plug](https://github.com/junegunn/vim-plug)
```sh
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
