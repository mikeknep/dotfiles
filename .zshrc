export EDITOR='vim'


alias ll='ls -AFGgohl'
alias dots="cd $HOME/dotfiles"
alias sandbox="cd $HOME/sandbox"

alias g='git'
alias gs='git status'
alias gp='git push'
alias gpl='git pull'
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias grh='git reset --hard'
alias gl='git lg -15'
alias gd='git diff'
alias gds='git diff --staged'
alias gb='git branch'


HOMEBREW_BINARIES=/usr/local/bin
CARGO_BINARIES=$HOME/.cargo/bin
PERSONAL_BINARIES=$HOME/dotfiles/bin
GO_BINARIES=$HOME/go/bin
PYENV_ROOT=$HOME/.pyenv

export PATH=$PATH:$HOMEBREW_BINARIES:$CARGO_BINARIES:$PERSONAL_BINARIES:$GO_BINARIES:$PYENV_ROOT

eval "$(pyenv init --path)"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Source other shell files
for f in ~/dotfiles/shell/*; do source $f; done

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit && compinit -u

bindkey -e

eval "$(starship init zsh)"
