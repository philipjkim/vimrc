#!/bin/sh

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

if [ -f ~/.vimrc ]; then
	cp ~/.vimrc ~/.vimrc.bak
fi
cp -f vimrc ~/.vimrc

vim +BundleInstall +qall
