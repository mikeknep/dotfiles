export EDITOR='vim'
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:~/dotfiles/bin:$PATH"

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# rustup
export PATH="$HOME/.cargo/bin:$PATH"

# Source other bash files
for f in ~/dotfiles/bash/*.bash; do source $f; done

eval "$(starship init bash)"
