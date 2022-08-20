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

Files placed in the `secrets/` directory are gitignored, but sourced by `.zshrc`.
This is particularly useful for exporting sensitive environment variables.
