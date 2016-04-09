# resize panes with the mouse
set -g mouse-resize-pane on

# double-prefix to jump back and forth
bind-key C-q last-window

# move like in vim
bind -n C-h run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)g?(view|n?vim?)(diff)?$' && tmux send-keys C-h) || tmux select-pane -L"
bind -n C-j run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)g?(view|n?vim?)(diff)?$' && tmux send-keys C-j) || tmux select-pane -D"
bind -n C-k run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)g?(view|n?vim?)(diff)?$' && tmux send-keys C-k) || tmux select-pane -U"
bind -n C-l run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)g?(view|n?vim?)(diff)?$' && tmux send-keys C-l) || tmux select-pane -R"
bind -n C-\ run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)g?(view|n?vim?)(diff)?$' && tmux send-keys 'C-\\') || tmux select-pane -l"
setw -g mode-keys vi
set -g status-keys vi
bind-key -t vi-edit Up history-up
bind-key -t vi-edit Down history-down
