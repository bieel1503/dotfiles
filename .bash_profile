#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$HOME/.local/bin/:$HOME/.cargo/bin"
# export npm_config_prefix="$HOME/.local"
export MOZ_ENABLE_WAYLAND=1
export EDITOR=nvim
export SKIM_DEFAULT_COMMAND="fd"

source /usr/share/nvm/init-nvm.sh
