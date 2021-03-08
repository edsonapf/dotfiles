#!/usr/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo add-apt-repository -y ppa:neovim-ppa/stable
    sudo apt-get update -y
    sudo apt-get -y install neovim
else
    brew install neovim
fi

