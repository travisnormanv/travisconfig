#!/bin/bash

ln -s /usr/local/share/travisconfig/.Xresources ~/.Xresources
ln -s /usr/local/share/travisconfig/.vimrc ~/.vimrc

mkdir -p ~/.config/i3
ln -s /usr/local/share/travisconfig/i3/ ~/.config/i3
