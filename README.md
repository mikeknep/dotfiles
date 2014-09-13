# Dotfiles

I've been convinced. Dotfiles must be treated as first-class citizens. So, here are mine.

## Groups

**Bash**
- Simplified color code constants (useful for customizing prompt)
- Aliases (git, navigation, rails, misc)
- Functions (some specific to personal projects, others more widely applicable)
- My prompt (a two-liner with current dir, git branch and status, sad face when errors, and nice colors)
- Option for sourcing sensitive data (see "Secrets" below)

**Vim**
- Vundle plugins
- General settings (visuals, searching, indentation, etc.)
- Key mappings
- Directory for edits to specific plugins
- Directory for filetype-specific settings

**Tmux**
- [WIP] Single config file with basic settings

**Git**
- Nothing fancy--global gitignore, use vim as default editor, etc.

**Rspec**
- Pretty colors
- Documentation output


## Setup Script

I've written a bash script to simplify creating this setup on your computer (or mine, if something really bad happens...)

### Preliminary notes

#### Bash 4.x required!

This script requires Bash 4.x. Unfortunately, Mac OSX ships with Bash 3.x. However, upgrading to Bash 4.x isn't too difficult:

1. Install the latest bash using homebrew: `brew install bash`
2. Add the brewed bash to your list of accepted shells: `echo /usr/local/bin/bash >> /etc/shells`
3. Change your shell: `chsh -s /usr/local/bin/bash`

You may have to restart your terminal. To confirm you're now on Bash 4.x, run `echo $BASH_VERSION`.

#### Behavior

- The script progresses group by group. You do not need to hook up to the dotfiles' settings for all groups--for example, if you want to keep your existing bash and git configuration but start using the repo's vim and rspec settings, you can do that.

- Archiving a file simply appends the suffix "old" to the filename. It remains in the home directory.

- Deleting an existing config file is **permanent**. I've added as much safety into the script as I can without being absolutely unbearable for people who do legitimately want to delete existing files, so don't claim you were caught off guard.

- If no existing config file is found, the script assumes you want to start using the settings in the dotfiles.

### OK, let's do this!

First, clone the repo into your home directory:

```
$ git clone https://github.com/mikeknep/dotfiles ~/dotfiles
```

Next, give executable permissions to the setup script:

```
$ chmod u+x ~/dotfiles/setup.sh
```

Finally, run the setup script:

```
$ ~/dotfiles/setup.sh
```


### Secrets

If you have bash environment variables that need to be kept secret, create a "secret" directory in the bash directory (`mkdir ~/dotfiles/bash/secret`) and add any files you need there. Your .bashrc will source these files, but they will not be tracked by git. (See `~/dotfiles/.gitignore` and `~/dotfiles/bash/bash`.)


### Personal fixes

If you are cloning and running the setup script, please remember to change your git user credentials in `~/dotfiles/git/gitconfig` and navigation aliases in `~/dotfiles/bash/aliases`.
