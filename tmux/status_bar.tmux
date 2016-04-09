set -g base-index 1
set -g status-left "#H (#S)"
set -g status-left-length 50
set -g status-right-length 50
set -g status-right "#(date -u '+%%H:%%M') UTC :: (#S) :: %h%d #(date '+%%l:%%M')"
setw -g window-status-format "#I:#W"
setw -g window-status-current-format "|#I:#W|"
