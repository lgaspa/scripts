ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOQUIT=false


# Path to your oh-my-zsh installation.
export ZSH="/root/.oh-my-zsh"

#set zsh theme
ZSH_THEME="robbyrussell"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux docker docker-compose zsh-autosuggestions zsh-syntax-highlighting man)

source $ZSH/oh-my-zsh.sh

# User configuration

#define custom aliases
alias top='htop'
