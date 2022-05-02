#!/bin/bash
BASEDIR=$(pwd)
cd
cp --force $BASEDIR/.vimrc .
sudo apt install build-essential cmake vim-nox python3-dev -y
# maybe vim-nox will be without python3 support
# in this case u need to build vim from sources, use folowing command:
# git clone https://github.com/vim/vim.git
# cd vim/src
# ./configure --with-features=huge --enable-python3interp
# make
# sudo make install
sudo apt install mono-complete golang nodejs default-jdk npm -y
vim # in vim enter :PlugInstall
cd ~/.vim/bundle/YouCompleteMe
sudo python3 install.py --all

