#!/bin/bash

set -euxo pipefail

if [[ $(whoami) != "root" ]]; then
	echo "This script needs to be run as root"
	exit 1
fi

ORIGINAL_USER=${SUDO_USER:-root}
USER_HOME=$(eval echo ~${ORIGINAL_USER})

apt update
apt install zsh \
       curl\
       git \
       vim \
       tmux \
       screenfetch \
       htop \
       --assume-yes

chsh -s $(which zsh)
if [ ! -d "/root/.oh-my-zsh" ]; then
    sh -c "$(ZSH="${USER_HOME}" curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    $(git clone https://github.com/zsh-users/zsh-autosuggestions ${USER_HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions)
    $(git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${USER_HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting)
fi



if [ -f "${USER_HOME}/.zshrc" ]; then
	rm ${USER_HOME}/.zshrc
fi
cp files/.zshrc ${USER_HOME}/.zshrc

if [ ! -f "${USER_HOME}/.tmux.conf" ]; then
    cp files/.tmux.conf ${USER_HOME}/.tmux.conf
fi

if [ ! -f "${USER_HOME}/.vimrc" ]; then
    cp files/vimrc ${USER_HOME}/.vimrc
fi

if [ ! -f "${USER_HOME}/.bashrc" ]; then
    rm ${USER_HOME}/.bashrc
fi
