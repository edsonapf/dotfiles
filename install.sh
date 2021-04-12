#!/bin/bash

source scripts/install_dependencies.sh
source scripts/install_fonts.sh
source scripts/install_zsh.sh
source scripts/install_neovim.sh
#source scripts/install_rust.sh
source scripts/install_vscode.sh
source scripts/install_chrome.sh
source scripts/install_tmux.sh
source scripts/install_nvm.sh
source scripts/install_docker.sh
source scripts/install_gitkraken
source scripts/install_openjdk
source scripts/install_intellij

# Copy default configurations
cp .tmux.conf ~/
cp .gitconfig ~/
cp -r .config/* ~/.config/

# Set ZSH as default shell
chsh -s $(which zsh)

echo "Please log off and log back in to see the changes"

