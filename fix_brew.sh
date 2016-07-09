#!/bin/sh

#fix_brew.sh - mcartier

echo "Installing a healthy homebrew"
mkdir -p "$HOME/Library/Caches/Homebrew"
echo "export HOMEBREW_CACHE=/tmp" > .zshenv
echo "export HOMEBREW_TEMP=~/Library/Caches" >> .zshenv
echo "export TMP_DIR=\"/Volumes/Storage/goinfre/$USER\"" >> .zshenv
echo "export PATH=~/.brew/bin:\$PATH" >> .zshenv
echo "done"
