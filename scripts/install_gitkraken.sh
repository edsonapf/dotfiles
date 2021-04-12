#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo snap install gitkraken --classic
else
    echo "Skipping intellij installation"
fi

