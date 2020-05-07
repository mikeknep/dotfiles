set -g default-terminal "screen-256color"
set-option -sa terminal-overrides ",xterm*:Tc"
set-option -g pane-border-style fg=$TMUX_BORDER_COLOR
set-option -g pane-active-border-style fg=$TMUX_BORDER_COLOR
set-option -g status-style fg=$TMUX_STATUS_TEXT_COLOR,bg=$TMUX_STATUS_BACKGROUND_COLOR
set-option -g message-style fg=$TMUX_ALERT_TEXT_COLOR,bg=$TMUX_ALERT_BACKGROUND_COLOR
set-window-option -g window-status-current-style fg=$TMUX_ACTIVE_WINDOW_TEXT_COLOR,bg=$TMUX_ACTIVE_WINDOW_BACKGROUND_COLOR
