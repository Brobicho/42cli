#!/bin/bash

#fix_fish.sh - mcartier

brew install autoconf;
printf "fish installation path : ";
read FISH_DIR;
eval FISH_DIR=$FISH_DIR;
echo "installing fish in $FISH_DIR;"
git clone https://github.com/fish-shell/fish-shell.git /tmp/fish;
cd /tmp/fish && autoconf && ./configure --prefix="$FISH_DIR" SED=/usr/bin/sed&& make && make install;
echo "DO NOT FORGET to add $FISH_DIR/bin to your path :)"
echo "you can put 'fish -l' in your .zshrc file :)"
