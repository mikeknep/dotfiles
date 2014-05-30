# Dotfiles

I've been convinced. Dotfiles must be treated as first-class citizens. So, here are mine.

## Contents

**Bash**
- Easier color codes (useful for customizing prompt)
- Aliases (git, navigation, rails, misc)
- Functions (java, ruby)
- My prompt (a two-liner with current dir, git branch and status, sad face, and nice colors)

**Vim**
- The bundles I use (via Vundle)
- Key mappings
- Searching
- Indentation
- Visuals
- Misc

**Git**
- Just the basics, nothing fancy

**Rspec**
- Pretty colors
- Cooler and more readable output


## Setup

To go all-in on my dotfiles settings, first clone the repo into your home directory

```
$ git clone https://github.com/mikeknep/dotfiles ~/dotfiles
```

Next, give executable permissions to the setup script

```
$ chmod u+x ~/dotfiles/setup.sh
```

Finally, run the setup script
```
$ ~/dotfiles/setup.sh
```

For each group of settings (bash, vim, rspec, git), the setup script will:
- check if an existing config file exists
- give you the option of archiving or deleting your existing config file (if present)
- create a symlink pointing to the appropriate config file in the dotfiles directory/repository

**BE CAREFUL**: This script will **permanently delete** files on your system if you tell it to.


## Additional notes

If you have bash environment variables that need to be kept secret, create a "secret" directory in the bash directory (`mkdir ~/dotfiles/bash/secret`) and add any files you need there. Your .bashrc will source these files, but they will not be tracked by git. (See `~/dotfiles/.gitignore` `~/dotfiles/bash/bash`.)

If you are cloning and running the setup script, please remember to change your git user credentials in `~/dotfiles/git/gitconfig`.
