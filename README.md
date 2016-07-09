# Dotfiles

Dotfiles are first-class citizens.

### Some highlights

#### Secrets

Files in `bash/secret/` will be sourced on login, but not tracked by git.
(Handy for sensitive data like environment variables.)

#### Setup scripts

1. `bin/symlink-all.sh` sets up all necessary symlinks
2. `bin/osx.sh` is a nearly-fully-automated script for setting up a new machine running OSX.


### Notes for anyone cloning these dotfiles

- OSX script is WIP and has not been fully tested
- Remember to change your git user credentials in `git/git`
