#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$HOME/.local/bin/:$HOME/.cargo/bin"
export npm_config_prefix="$HOME/.local"
export MOZ_ENABLE_WAYLAND=1
export EDITOR=nvim
export SKIM_DEFAULT_COMMAND="fd"
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export DXVK_CONFIG_FILE=$XDG_CONFIG_HOME/dxvk/dxvk.conf
