#!/bin/sh

#fix_fish.sh - mcartier
fishpath="$HOME/.brew/Cellar/fish/2.3.1";

#test the version
if [ -d $fishpath ];
then
  echo "you have the good version";
else
  echo "your version isn't supported by this fix :/\nplease use fish 2.3.1";
  exit;
fi

#backing up and fixing fish
echo "backing up and fixing fish.";
mv $fishpath/bin/fish $fishpath/bin/fish_bak
curl -L https://raw.githubusercontent.com/neolectron/fish-shell/master/42hotfix/2.3.1/fish > $fishpath/bin/fish
chmod +x $fishpath/bin/fish;

#launch fish shell as default login shell
if [ "$1" = "--login" ];
  then
    echo "set up fish as default login shell";
    [ -f $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc_bak;
    echo "exec fish -l" > .zshrc;
fi
