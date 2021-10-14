#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
    sudo tar -xzf postman.tar.gz -C /opt
    cp -r ./Postman.desktop ~/.local/share/applications/
else
    echo "Skipping postman installation"
fi

