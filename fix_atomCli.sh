#!/bin/sh

brewdir="$HOME/.brew/bin";
brewpath=`echo "$PATH" | grep ".brew/bin"`;

if [ ! -z "$brewpath" ];
  then
    echo "creating symlinks into your brew PATH";
    ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh $brewdir/atom;
    ln -s /Applications/Atom.app/Contents/Resources/app/apm/bin/apm $brewdir/apm;
    echo "now atom cli is fixed";
  else
    echo "sorry you need Homebrew to execute this fix";
    echo "you can still execute the homebrew fix and come back here :)";
fi
