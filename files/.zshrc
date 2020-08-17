export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR=vim

ZSH_TMUX_AUTOSTART=true

#set zsh theme
ZSH_THEME="robbyrussell"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux docker docker-compose zsh-autosuggestions zsh-syntax-highlighting man)

# Path to your oh-my-zsh installation.
echo $ZSH
export ZSH="/home/$(whoami)/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# User configuration

#define custom aliases
alias top='htop'
