#!/bin/bash
# Install i3-gaps on Ubuntu

set -x

echo $(pwd)

INITIAL_DIR=$1
REPOS_DIR=$2

sudo apt-get update && \
sudo apt-get install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev dh-autoreconf

mkdir -p $REPOS_DIR

if cd $REPOS_DIR/xcb-util-xrm; then \
 git pull;
else
 git clone --recursive https://github.com/Airblader/xcb-util-xrm.git $REPOS_DIR/xcb-util-xrm; cd $REPOS_DIR/xcb-util-xrm;
fi

./autogen.sh

if [ $? -eq 1 ] 
then # For some odd reason libtoolize fails on first run
    ./autogen.sh
fi

make
sudo make install

sudo ldconfig
sudo ldconfig -p

if cd $REPOS_DIR/i3-gaps; then
 git pull
else 
 git clone https://www.github.com/Airblader/i3 $REPOS_DIR/i3-gaps; cd $REPOS_DIR/i3-gaps;
fi

autoreconf --force --install
rm -Rf build/
mkdir build
cd build/
 ../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
which i3