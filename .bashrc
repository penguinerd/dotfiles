export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Extract any archive
extract () {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.gz) tar -xzf "$1" ;;
            *.tar.bz2) tar -xjf "$1" ;;
            *.tar.xz) tar -xJf "$1" ;;
            *.zip) unzip "$1" ;;
            *.rar) unrar x "$1" ;;
            *) echo "Unknown format" ;;
        esac
    else
        echo "File not found"
    fi
}

# dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
