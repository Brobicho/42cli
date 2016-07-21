#!/bin/sh

brewpath=`echo "$PATH" | grep ".brew/bin"`;

if [ ! -z "$brewpath" ];
then
  tmpfish="/tmp/fishfix";
  rm -rf $tmpfish;
  echo "cloning fish repo";
  git clone https://github.com/neolectron/fish-shell.git --depth=1 $tmpfish;
  cd $tmpfish;
  make;
else
  echo "you need to have brew fixed to use this fix"
fi
