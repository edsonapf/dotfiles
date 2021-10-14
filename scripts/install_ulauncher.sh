#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher
else
    echo "Skipping ulauncher installation"
fi

