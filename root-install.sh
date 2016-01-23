#!/bin/bash
echo "Installing vim files"
cp -f ./vimrc ~/.vimrc
cp -Rf ./vim ~/.vim
echo "Copying font override"
cp -f ./arch-linux/fonts-51-local.conf /etc/fonts/conf.avail/51-local.conf
chmod 0644 /etc/fonts/conf.avail/51-local.conf
echo "You can flush font cache with fc-cache -frv"
echo "Done"
