#!/bin/bash

# ADD ARC

set -x

INITIAL_DIR=$(pwd)
REPOS_DIR=$INITIAL_DIR/repos

function install-i3 {
    sudo apt-get -y install i3 i3-wm i3status i3blocks
}

function install-i3-gaps {
    bash ./i3-gaps-install.sh $INITIAL_DIR $REPOS_DIR
}

function install-polybar {
    sudo apt-get -y install cmake \
        libpulse-dev \
        libmpdclient-dev \
        libasound2-dev \
        libiw-dev \
        python-xcbgen \
        libxcb-icccm4-dev\
        libxcb1-dev \
        xcb-proto \
        libxcb-util-dev \
        libxcb-image0-dev \
        libxcb-randr0-dev \
        libxcb-xkb-dev \
        libalsaplayer-dev \
        wireless-tools \
        libcurlpp-dev  \
        libcairo2-dev \
        python-xcbgen \
        libxcb-ewmh-dev \
        libxcb-icccm4-dev \
        libxcb1-dev xcb-proto \
        libxcb-util-dev \
        libxcb-image0-dev \
        libxcb-randr0-dev \
        libxcb-xkb-dev \
        libcurl4-openssl-dev


    if ! cd $REPOS_DIR/polybar; then \
        git clone --recursive https://github.com/jaagr/polybar $REPOS_DIR/polybar; cd $REPOS_DIR/polybar;
    fi 
    
    mkdir -p build
    cd build
    cmake ..
    sudo make install
    cd $INITIAL_DIR
}

function install-i3-tools {
    sudo apt-get -y install rofi \
        compton \
        lxappearance \
        feh \
        scrot
}

function install-fonts {
    sudo apt-get -y install fonts-powerline \
        fonts-font-awesome
    
    mkdir -p $HOME/.fonts/IBM-Plex
    
    if [ ! -d "$REPOS_DIR/IBM-Plex" ]; then
        mkdir -p $REPOS_DIR/IBM-Plex
        git clone --branch v1.0.2 https://github.com/IBM/plex.git $REPOS_DIR/IBM-Plex
    fi
    
    for dir in $(find $REPOS_DIR/IBM-Plex -mindepth 1 -maxdepth 1 -name "*IBM*" -type d)
    do
        cp -r $dir $HOME/.fonts/IBM-Plex
    done

    fc-cache -fv
}

function install-wallpaper {
    mkdir -p $HOME/Pictures
    cp ./wallpaper.jpg $HOME/Pictures
}

function copy-config {
    if [ -d "$HOME/.config/i3" ] 
    then
        mv $HOME/.config/i3 $HOME/.config/i3-old
    fi

    if [ -d "$HOME/.config/polybar" ] 
    then
        mv $HOME/.config/polybar $HOME/.config/polybar-old
    fi

    if [ -f "$HOME/.Xresources" ] 
    then
        mv $HOME/.Xresources $HOME/.Xresources-old
    fi

    cp -r ./.config/i3 $HOME/.config/i3
    cp -r ./.config/polybar $HOME/.config/polybar

    cp -r ./.Xresources $HOME/.Xresources
}

whiptail --title "CaioMCG Dotfile installer " --checklist --separate-output "Choose softwares to install:" 20 80 12 \
    "i3" "I3 window manager along with i3status and i3blocks" on \
    "i3-gaps" "An advanced i3 that supports gapping" on \
    "polybar" "An alternative status bar" on \
    "i3-tools" "A set of tools that provide a better experience with i3." on \
    "fonts" "FontAwesome, Powerline and IBM-Plex fonts" on \
    "wallpaper" "Copy the wallpaper to the Pictures folder" on \
    "config" "Copy polybar and i3 configurations." on 2>results

while read choice 
do
    case $choice in
            i3) install-i3
            ;;
            i3-gaps) install-i3-gaps
            ;;
            polybar) install-polybar
            ;;
            i3-tools) install-i3-tools
            ;;
            fonts) install-fonts
            ;;
            wallpaper) install-wallpaper
            ;;
            config) copy-config
            ;;
    esac
done  < results
#sudo pip install psutil
#sudo pip install netifaces
