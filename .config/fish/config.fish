fish_vi_key_bindings

set -U fish_user_paths /opt/local/bin

set fish_greeting

alias c='clear'
alias vim="/Users/yonikosiner/nvim-osx64/bin/nvim"
alias nvim="/Users/yonikosiner/nvim-osx64/bin/nvim"

alias tmux2="/Users/yonikosiner/scripts/tmux2"

alias ..="cd .."
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

alias :q="exit"

alias evrc="vim /Users/yonikosiner/.config/nvim"
alias ef="vim /Users/yonikosiner/.config/fish"

alias safariTabs="osascript ~/safariTabs"

alias work="~/scripts/work.sh"
alias school="~/scripts/school.sh"

alias bg="~/scripts/bg"

set theme_color_scheme gruvbox
