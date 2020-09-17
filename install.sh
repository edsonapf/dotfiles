#!/bin/bash
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update -y
    sudo apt-get -y install zsh tmux git neovim
fi

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cp *.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes

cp .zshrc ~/
cp .tmux.conf ~/
cp -r .config/ ~/`.config/`
