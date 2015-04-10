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

Files in `bash/secret` will be sourced on login, but not tracked by git.
(See `~/dotfiles/.gitignore` and `~/dotfiles/bash/bash`.)

## Setup scripts

There are three main scripts in the `bin` directory for symlinking.

1. `osx.sh` is a WIP, near-fully-automated script for setting up a new machine running OSX.
2. `vm.sh` is another WIP script for use when provisioning a virtual machine.
3. `guest.sh` walks through the symlink process. If you want to clone down my setup and wire it up on your machine, use this.

#### Notes re: `bin/guest.sh`

##### Bash 4.x required!

`bin/symlink.sh` requires Bash 4.x. Unfortunately, Mac OSX ships with Bash 3.x. However, upgrading to Bash 4.x isn't too difficult:

1. Install the latest bash using homebrew: `brew install bash`
2. Add the brewed bash to your list of accepted shells: `echo /usr/local/bin/bash >> /etc/shells`
3. Change your shell: `chsh -s /usr/local/bin/bash`

You may have to restart your terminal. To confirm you're now on Bash 4.x, run `echo $BASH_VERSION`.

##### Behavior

- `bin/symlink.sh` progresses group by group. You do not need to hook up to the dotfiles' settings for all groups--for example, if you want to keep your existing bash and git configuration but start using the repo's vim and rspec settings, you can do that.

- Archiving a file simply appends the suffix "old" to the filename. It remains in the home directory.

- Deleting an existing config file is **permanent**. I've added as much safety into the script as I can without being absolutely unbearable for people who do legitimately want to delete existing files, so don't claim you were caught off guard.

- If no existing config file is found, the script assumes you want to start using the settings in the dotfiles.

##### Personal fixes

Remember to change your git user credentials in `~/dotfiles/git/gitconfig` and navigation aliases in `~/dotfiles/bash/aliases`.

##### Executable permissions

To make the script executable, run:

```
$ chmod u+x ~/dotfiles/bin/setup.sh
```
