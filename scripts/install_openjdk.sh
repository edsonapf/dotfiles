#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo add-apt-repository ppa:openjdk-r/ppa

    sudo apt-get update

    sudo apt-get install openjdk-8-jdk
else
    echo "Skipping openjdk installation"
fi

