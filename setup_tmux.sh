#!/bin/bash
BASEDIR=$(pwd)
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp --force $BASEDIR/.tmux.conf.local .

