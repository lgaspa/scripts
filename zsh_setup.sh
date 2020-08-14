#!/bin/bash

set -euxo pipefail

if [[ $(whoami) != "root" ]]; then
	echo "This script needs to be run as root"
	exit 1
fi

apt update 
apt install zsh \
       curl\
       git \
       --assume-yes

chsh -s $(which zsh) $(whoami)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


