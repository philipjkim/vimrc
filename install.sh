#!/bin/sh

if [ -f ~/.vimrc ]; then
	cp ~/.vimrc ~/.vimrc.bak
fi
cp -f vimrc ~/.vimrc
