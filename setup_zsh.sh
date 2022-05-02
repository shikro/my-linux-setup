#!/bin/bash
BASEDIR=$(pwd)
cd
sudo apt install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp --force ${BASEDIR}/.zshrc .
