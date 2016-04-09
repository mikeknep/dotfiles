set-option -g default-command "reattach-to-user-namespace -l bash"
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"
