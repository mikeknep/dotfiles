# Dotfiles

### Secrets

Files named `secret*` are gitignored, but sourced by `.bashrc` and `.gitconfig`.
Useful for sensitive data like environment variables, private project gitconfigs, etc.

### Setup scripts

`bin/symlink-all.sh` sets up all necessary symlinks


### Notes for anyone cloning these dotfiles

- MacOS script is more a walkthrough than an automatable setup script
- Remember to change your git user credentials in `.gitconfig`
