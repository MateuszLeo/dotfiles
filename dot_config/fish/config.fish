fish_add_path /opt/homebrew/bin
fish_add_path ~/.volta/bin

set -gx EDITOR nvim
set -gx LANG en_GB.UTF-8

set fish_greeting ""

starship init fish | source
