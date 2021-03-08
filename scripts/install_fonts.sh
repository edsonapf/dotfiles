#!/bin/bash

mkdir -p $HOME/.fonts
cp -r ./fonts/* $HOME/.fonts

sudo fc-cache
