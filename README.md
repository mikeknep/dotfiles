# Dotfiles

Dotfiles are first-class citizens.

## Groups

**Bash**
- Aliases
- Color code constants
- Docker settings
- Environment variables
- Functions
- Prompt
- [Rbenv](https://github.com/sstephenson/rbenv)
- Secrets (directory for sourcing sensitive data; see below)

**Git**
- Basic settings
- Global gitignore

**iTerm**
- Light and dark colorschemes

**Leiningen**
- Helpful repl utilities

**Rspec**
- Colorful dots

**Tmux**
- Single config file with basic settings

**Vim**
- Vundle plugins
- General settings (visuals, searching, indentation, etc.)
- Key mappings
- Directory for edits to specific plugins
- Directory for filetype-specific settings

### Secrets

Files in `bash/secret/` will be sourced on login, but not tracked by git.

## Setup scripts

There are three main scripts in the `bin` directory for symlinking.
All are pretty WIP for various reasons.

1. `osx.sh` is a nearly-fully-automated script for setting up a new machine running OSX.
2. `vm.sh` is intended for provisioning a virtual machine.
3. `guest.sh` walks through the symlink process, prompting for user decisions along the way.

#### Notes for anyone cloning these dotfiles

##### Bash 4.x required!

The symlink scripts all require Bash 4.x.
Unfortunately, Mac OSX ships with Bash 3.x.
However, upgrading to Bash 4.x isn't too difficult:

1. Install the latest bash using homebrew: `brew install bash`
2. Add the brewed bash to your list of accepted shells: `echo /usr/local/bin/bash >> /etc/shells`
3. Change your shell: `chsh -s /usr/local/bin/bash`

You may have to restart your terminal. To confirm you're now on Bash 4.x, run `echo $BASH_VERSION`.

##### Personal fixes

Remember to change your git user credentials in `~/dotfiles/git/gitconfig` and navigation aliases in `~/dotfiles/bash/aliases`.
