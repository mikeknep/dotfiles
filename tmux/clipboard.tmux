set-option -g default-command "reattach-to-user-namespace -l bash"
bind-key -T copy-mode-vi 'v' send -X begin-selection
bind-key -T copy-mode-vi 'y' send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"
