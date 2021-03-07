#!/bin/zsh

function compile() {
    cd alacritty

    cargo build --release

    sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
    sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
    sudo desktop-file-install extra/linux/Alacritty.desktop
    sudo update-desktop-database
}

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt-get install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python
    git clone --branch v0.5.0 https://github.com/alacritty/alacritty.git
    compile

else
    brew install alacritty
fi
