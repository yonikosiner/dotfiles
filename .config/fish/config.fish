fish_vi_key_bindings

set -U fish_user_paths /opt/local/bin

set fish_greeting

alias c='clear'
alias vim="nvim"

alias ..="cd .."
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

alias evrc="vim /Users/yonikosiner/.config/nvim"

alias work="bash ~/scripts/work.sh"
alias school="bash ~/scripts/school.sh"

