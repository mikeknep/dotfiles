HOMEBREW_BINARIES=/usr/local/bin
CARGO_BINARIES=$HOME/.cargo/bin
GO_BINARIES=$HOME/go/bin
USER_LOCAL_BINARIES=$HOME/.local/bin
HOME_BINARIES=$HOME/bin

export PATH=$PATH:$HOMEBREW_BINARIES:$CARGO_BINARIES:$GO_BINARIES:$USER_LOCAL_BINARIES:$HOME_BINARIES
export EDITOR='nvim'
export RIPGREP_CONFIG_PATH=$HOME/dotfiles/.ripgreprc

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

# opencode
export PATH=/Users/mknepper/.opencode/bin:$PATH

# pnpm
export PNPM_HOME="/Users/mknepper/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"

# Sourcing nvm.sh eagerly costs ~1.8s per shell, almost all of it resolving the
# default alias. Put that version's bin on PATH directly instead.
() {
  local want=default
  [[ -r $NVM_DIR/alias/default ]] && want=$(<$NVM_DIR/alias/default)
  local -a bin=($NVM_DIR/versions/node/v${want#v}*/bin(N/n))
  (( $#bin )) || bin=($NVM_DIR/versions/node/*/bin(N/n))
  (( $#bin )) && path=($bin[-1] $path)
}

# Load the real nvm only when it is actually called.
nvm() {
  unset -f nvm
  [[ -s $NVM_DIR/nvm.sh ]] && . $NVM_DIR/nvm.sh
  [[ -s $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
  nvm "$@"
}
