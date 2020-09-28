#!/bin/bash

mkdir -p $HOME/.fonts
cp -r Hack $HOME/.fonts

sudo fc-cache
