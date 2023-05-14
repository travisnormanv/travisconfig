#!/bin/bash

## Create back ups if existing
if [ -f ~/.Xresources ]; then
	mv ~/.Xresources /usr/local/share/backups/.Xresources
fi

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc /usr/local/share/backups/.vimrc
fi

if [ -f ~/.xinitrc ]; then
	mv ~/.xinitrc /usr/local/share/backups/.xinitrc
fi

if [ -f ~/.xsession ]; then
	mv ~/.xsession /usr/local/share/backups/.xsession
fi

if [ -f ~/.config/i3/config ]; then
	mv ~/.config/i3/config /usr/local/share/backups/.config/i3/config
fi

## Now delete the configs
rm -f ~/.Xresources
rm -f ~/.vimrc
rm -f ~/.config/i3/config
rm -f ~/.xsession
rm -f ~/.xinitrc

ln -s /usr/local/share/travisconfig/.Xresources ~/.Xresources
ln -s /usr/local/share/travisconfig/.vimrc ~/.vimrc
ln -s /usr/local/share/travisconfig/.xinitrc ~/.xinitrc
ln -s /usr/local/share/travisconfig/.xsession ~/.xsession

mkdir -p ~/.config/i3
ln -s /usr/local/share/travisconfig/i3/config ~/.config/i3/config
