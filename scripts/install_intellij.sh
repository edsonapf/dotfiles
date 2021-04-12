#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo snap install intellij-idea-ultimate --classic
else
    echo "Skipping intellij installation"
fi

