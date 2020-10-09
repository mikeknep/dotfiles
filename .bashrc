# Source all bash files
for f in ~/dotfiles/bash/*.bash; do source $f; done

eval "$(starship init bash)"
