# Dotfiles

### Secrets

Files named `secret*` are gitignored, but sourced by `.bashrc` and `.gitconfig`.
Useful for sensitive data like environment variables, private project gitconfigs, etc.

### Setup scripts

1. `bin/symlink-all.sh` sets up all necessary symlinks
2. `bin/osx.sh` is a nearly-fully-automated script for setting up a new machine running OSX.


### Notes for anyone cloning these dotfiles

- OSX script is WIP and has not been fully tested
- Remember to change your git user credentials in `.gitconfig`
