#!/usr/bin/env bash

set -euo pipefail

dir=/tmp/doom-install

mkdir -p $dir
cd $dir
curl -O -L https://github.com/sagittaros/emacs-osx/releases/download/doom-native-prebuilt/dot-emacs-d-native.tar.gz

tar -xzf dot-emacs-d-native.tar.gz

[ -d "$HOME/.emacs.d" ] && mv $HOME/.emacs.d $HOME/.emacs.d.bak
mv Users/runner/.emacs.d $HOME/

rm -rf $dir

doom sync -u
doom purge
doom doctor