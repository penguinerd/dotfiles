[[ $- != *i* ]] && return

export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
