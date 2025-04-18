HOMEBREW_BINARIES=/usr/local/bin
CARGO_BINARIES=$HOME/.cargo/bin
GO_BINARIES=$HOME/go/bin
USER_LOCAL_BINARIES=$HOME/.local/bin
HOME_BINARIES=$HOME/bin

export PATH=$PATH:$HOMEBREW_BINARIES:$CARGO_BINARIES:$GO_BINARIES:$USER_LOCAL_BINARIES:$HOME_BINARIES
export EDITOR='nvim'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

for f in ~/dotfiles/shell/*; do source $f; done
for f in ~/dotfiles/secrets/*.sh(N); do source $f; done

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit && compinit -u

bindkey -e

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"
export PATH=$PATH:$HOME/.local/bin/
