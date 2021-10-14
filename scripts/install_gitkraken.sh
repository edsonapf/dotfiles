#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
    sudo dpkg -i gitkraken-amd64.deb
else
    echo "Skipping intellij installation"
fi

