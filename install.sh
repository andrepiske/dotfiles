#!/bin/bash
echo "Installing vim files"
cp -f ./vimrc ~/.vimrc
cp -Rf ./vim ~/.vim
echo "Installing gemrc files"
cp -f ./gemrc ~/.gemrc
echo "Installing atom files"
cp -f ./atom/keymap.cson ~/.atom/keymap.cson
echo "Done"
