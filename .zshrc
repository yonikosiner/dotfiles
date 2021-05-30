export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/Users/yonikosiner/nvim-osx64/bin

# Enabling and setting git info var to be used in prompt config.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "- (%b) "
precmd() {
    vcs_info
}

bindkey -s ^l "scripts/tmux2.sh\n"
<<<<<<< HEAD
alias clangd="/Users/yonikosiner/Downloads/clang+llvm-12.0.0-aarch64-linux-gnu/bin/clangd"
=======
>>>>>>> cb38437196fe4a5baf6c4174368123f1673f6585


# Enable substitution in the prompt.
setopt prompt_subst

# Config for the prompt. PS1 synonym.
prompt='[%2/]${vcs_info_msg_0_}$ '

EDITOR=nvim
VISUAL=nvim

alias c="clear"
alias ll="ls -l"
alias ..="cd .."
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

alias :q="exit"

alias mv='mv -i'
alias rm='rm -i'

alias vim="nvim"

alias evrc="vim /Users/yonikosiner/.config/nvim"

alias work="bash ~/scripts/work.sh"
alias school="bash ~/scripts/school.sh"

bindkey -v
