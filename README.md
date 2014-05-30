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
- Nothing fancy--global gitignore, use vim as default editor, etc.

**Rspec**
- Pretty colors
- Documentation output


## Setup

To go all-in on my dotfiles settings, first clone the repo into your home directory:

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

For each group of settings (bash, vim, rspec, git), the setup script will:
- check if an existing config file exists
- give you the option of archiving or deleting your existing config file (if present)
- create a symlink pointing to the appropriate config file in the dotfiles directory/repository

**CAUTION 1**: This script will **permanently delete** files on your system if you tell it to.

**CAUTION 2**: This script is currently all or nothing--you can't "opt in" to, say, my vim and rspec settings but keep your bash and git settings. I will improve the script soon to allow picking and choosing of different groups.


## Re: Vundle Bundles

I use [Vundle](https://github.com/gmarik/Vundle.vim) to manage my vim plugins. However, it looks like gmarik has slightly changed some config settings since I cloned it down and began using it. If you run my setup script and experience problems with the Vundle plugins, take a look at Vundle's README and adjust `~/dotfiles/vim/vim.bundles` as needed (hint: it probably has to do with the runtime path and/or the `call vundle#begin()`/`call vundle#end()` commands).


## Secrets

If you have bash environment variables that need to be kept secret, create a "secret" directory in the bash directory (`mkdir ~/dotfiles/bash/secret`) and add any files you need there. Your .bashrc will source these files, but they will not be tracked by git. (See `~/dotfiles/.gitignore` and `~/dotfiles/bash/bash`.)


## Personal fixes

If you are cloning and running the setup script, please remember to change your git user credentials in `~/dotfiles/git/gitconfig` and navigation aliases in `~/dotfiles/bash/aliases`.
