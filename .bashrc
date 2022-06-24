# ~/.bashrc

#COLOR="\[\e[38;5;69m\]"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#HISTORY
export HISTIGNORE="exit:ls:gt:goto:cd:reset:clear:pwd:history:poweroff:reboot:cmus:htop:tmux:foot"
export HISTCONTROL="ignoreboth:erasedups"
export HISTSIZE=1000


# ALIASES
alias ..="cd .."
alias ..1="cd .."
alias 1..="cd .."
alias ..2="cd ../.."
alias 2..="cd ../.."
alias ..3="cd ../../.."
alias 3..="cd ../../.."
alias ..4="cd ../../../.."
alias 4..="cd ../../../.."
alias ..5="cd ../../../../.."
alias 5..="cd ../../../../.."
alias ..6="cd ../../../../../.."
alias 6..="cd ../../../../../.."

alias sway="dbus-launch --exit-with-session sway"

alias ls="ls --color=always --almost-all --group-directories-first --human-readable --size  -lSX"
alias gt="goto"
alias update="doas pacman -Syu"
alias updateaur="paru -Syua"
alias cleanup="pacman -Qtdq | doas pacman -Rns -"

#SOURCES
source /usr/share/git/git-prompt.sh


PS1='\[\e[1m\]\[\e[38;5;30m\]\W $(__git_ps1 "\[\e[38;5;69m\]git:(\[\e[38;5;124m\]%s\[\e[38;5;69m\])")\[\e[38;5;256m\]\[\e[0m\]$ '
#PS1='[\u@\h \W]\$ '

# FUNCTIONS
goto() {
  goto="$(sk -e -c 'fd --base-directory=$HOME --type directory --hidden')"
  if [[ ! -z "$goto" ]]; then
    cd "$HOME/$goto"
  fi
}

set-volume() {
  case "$1" in
    "mute" | "unmute")
      pactl set-sink-mute @DEFAULT_SINK@ toggle
      pactl get-sink-mute @DEFAULT_SINK@
    ;;
    [0-9]*)
      pactl set-sink-volume @DEFAULT_SINK@ "$1%"
      pactl get-sink-volume @DEFAULT_SINK@
    ;;
    "get")
      pactl get-sink-volume @DEFAULT_SINK@
    ;;
    *)
      echo "set-volume <mute,unmute,get,volume>"
    ;;
  esac
}
