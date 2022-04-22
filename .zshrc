HOMEBREW_BINARIES=/usr/local/bin
CARGO_BINARIES=$HOME/.cargo/bin
GO_BINARIES=$HOME/go/bin
PYENV_ROOT=$HOME/.pyenv
USER_LOCAL_BINARIES=$HOME/.local/bin

export PATH=$PATH:$HOMEBREW_BINARIES:$CARGO_BINARIES:$GO_BINARIES:$PYENV_ROOT:$USER_LOCAL_BINARIES
export EDITOR='nvim'

eval "$(pyenv init --path)"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

for f in ~/dotfiles/shell/*; do source $f; done
for f in ~/dotfiles/secrets/*.sh(N); do source $f; done

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit && compinit -u

bindkey -e

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"
