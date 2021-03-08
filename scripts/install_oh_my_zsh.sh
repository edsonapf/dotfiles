#!/bin/bash

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir -p ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes
mkdir -p ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/caiomcg/gruvbox-zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes

wget -O ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme https://raw.githubusercontent.com/pascaldevink/spaceship-zsh-theme/master/spaceship.zsh


