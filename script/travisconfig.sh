#!/bin/bash

## Create back ups if existing
if [ -f ~/.Xresources ]; then
	mv ~/.Xresources ~/.Xresources.bak
fi

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.bak
fi

if [ -f ~/.xinitrc ]; then
	mv ~/.xinitrc ~/.xinitrc.bak
fi

if [ -f ~/.xsession ]; then
	mv ~/.xsession ~/.xsession.bak
fi

if [ -f ~/.config/i3/config ]; then
	mv ~/.config/i3/config ~/.config/i3/config.bak
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
