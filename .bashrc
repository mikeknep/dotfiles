export EDITOR='vim'

HOMEBREW_BINARIES=/usr/local/bin
CARGO_BINARIES=$HOME/.cargo/bin
PERSONAL_BINARIES=$HOME/dotfiles/bin
GO_BINARIES=$HOME/go/bin

export PATH=$PATH:$HOMEBREW_BINARIES:$CARGO_BINARIES:$PERSONAL_BINARIES:$GO_BINARIES

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Source other bash files
for f in ~/dotfiles/bash/*.bash; do source $f; done

eval "$(starship init bash)"
