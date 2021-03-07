#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Update references
    sudo apt-get update -y
    
    # Install executables
    sudo apt-get -y install \
        wget

    # Install chrome keys
    wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

    # update once again
    sudo apt-get update -y

    # Install chrome
    sudo apt-get install google-chrome-stable
    sudo apt-get -f install

else
    echo "Skipping chrome installation"
fi
